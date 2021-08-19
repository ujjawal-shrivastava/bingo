import 'dart:math';
import 'package:flutter/material.dart';
import 'package:multiavatar/multiavatar.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:bingo/api/api.dart';

class Players extends StatelessWidget {
  final List<RoomFieldsMixin$CommonPlayer> players;
  final List<RoomFieldsMixin$RoomState$GameData$Rank>? ranks;

  final Function(String) onKickPlayer;

  const Players({
    Key? key,
    required this.players,
    required this.onKickPlayer,
    this.ranks,
  }) : super(key: key);

  final minWidthPlayers = 100.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(
        builder: (context, constraints) => FittedBox(
          fit: BoxFit.fitWidth,
          child: Container(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: minWidthPlayers,
                maxWidth: max(constraints.maxWidth, minWidthPlayers),
                maxHeight: constraints.maxHeight,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Container(
                        child: Text(
                          "Players",
                          style: Theme.of(context).textTheme.headline5,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 30),
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            spacing: 20,
                            children: [
                              ...players.map(
                                (player) => buildPlayerWidget(player, context),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPlayerWidget(
      RoomFieldsMixin$CommonPlayer player, BuildContext context) {
    return CommonPlayerWidget(
      player: player,
      onKickPlayer: onKickPlayer,
      rank: getRank(playerFieldsOfCommonPlayer(player)),
    );
  }

  int? getRank(PlayerFieldsMixin playerData) {
    if (ranks != null) {
      if (ranks!.any((element) => element.player.id == playerData.id)) {
        var rank = ranks!
            .firstWhere((element) => element.player.id == playerData.id)
            .rank;
        return rank;
      }
    }
  }
}

PlayerFieldsMixin playerFieldsOfCommonPlayer(
    RoomFieldsMixin$CommonPlayer player) {
  if (player is RoomFieldsMixin$CommonPlayer$GamePlayer) {
    return player.player;
  } else {
    return (player as RoomFieldsMixin$CommonPlayer$LobbyPlayer).player;
  }
}

Color getStatusColor(RoomFieldsMixin$CommonPlayer player) {
  if (player is RoomFieldsMixin$CommonPlayer$GamePlayer) {
    if (!player.isConnected) {
      return Colors.grey;
    } else if (player.board == null) {
      return Colors.orange;
    } else {
      return Colors.green;
    }
  } else {
    return player.isConnected ? Colors.green : Colors.grey;
  }
}

class CommonPlayerWidget extends StatelessWidget {
  final RoomFieldsMixin$CommonPlayer player;
  final int? rank;
  final Function(String) onKickPlayer;

  CommonPlayerWidget({
    required this.player,
    required this.onKickPlayer,
    this.rank,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: player.isConnected ? 1 : 0.2,
          child: Column(
            children: [
              Stack(
                children: [
                  PlayerAvatar(player: playerFieldsOfCommonPlayer(player)),
                  Positioned(
                    right: 2,
                    bottom: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: getStatusColor(player),
                        border: Border.all(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          width: 2,
                        ),
                      ),
                      height: 20,
                      width: 20,
                      child: Text(
                        rank?.toString() ?? " ",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                child: Text(
                  playerFieldsOfCommonPlayer(player).name,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              if ((player is RoomFieldsMixin$CommonPlayer$GamePlayer) &&
                  ((player as RoomFieldsMixin$CommonPlayer$GamePlayer)
                          .board
                          ?.score !=
                      null))
                Container(
                  child: Text(
                    "${(player as RoomFieldsMixin$CommonPlayer$GamePlayer).board?.score}/${(player as RoomFieldsMixin$CommonPlayer$GamePlayer).board?.numbers.length}",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              // Container(
              //   child: Text(
              //     playerFieldsOfCommonPlayer(player).id,
              //     style: Theme.of(context)
              //         .textTheme
              //         .subtitle1,
              //   ),
              // )
            ],
          ),
        ),
        if (!player.isConnected)
          Positioned.fill(
            bottom: 24,
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.transparent),
              child: InkWell(
                onTap: () async {
                  var shouldKick = await showDialog<bool>(
                      context: context,
                      builder: (context) => Dialog(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    decoration: BoxDecoration(
                                        color:
                                            Theme.of(context).primaryColorDark),
                                    child: Text(
                                      "Kick Player?",
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 50),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.person_remove,
                                            color: Colors.red,
                                            size: 60,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'Are you sure you want to kick "${playerFieldsOfCommonPlayer(player).name}" out of this room?',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container()
                                ]),
                            // child: Column(
                            //   mainAxisSize: MainAxisSize.min,
                            //   children: [
                            //     Container(
                            //       margin: EdgeInsets.only(top: 20),
                            //       child: Icon(Icons.person_remove,
                            //           color: Colors.red),
                            //     ),
                            //     Container(
                            //       margin: EdgeInsets.symmetric(vertical: 10),
                            //       child: Text(
                            //         'Kick ${playerFieldsOfCommonPlayer(player).name}',
                            //         textAlign: TextAlign.center,
                            //       ),
                            //     ),
                            //     Container(
                            //       margin: EdgeInsets.only(top: 5),
                            //       child: ElevatedButton(
                            //         onPressed: () {
                            //           Navigator.of(context).pop(true);
                            //         },
                            //         child: Text('Confirm'),
                            //       ),
                            //     ),
                            //     Container(
                            //       margin: EdgeInsets.only(top: 5),
                            //       child: TextButton(
                            //         onPressed: () {
                            //           Navigator.of(context).pop(false);
                            //         },
                            //         child: Text('Cancel'),
                            //       ),
                            //     ),
                            //   ],
                            // ),
                          ));
                  if (shouldKick == true) {
                    onKickPlayer(playerFieldsOfCommonPlayer(player).id);
                  }
                },
                child: Center(
                  child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black.withOpacity(0.5)),
                      child: Icon(Icons.person_remove, color: Colors.white)),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class PlayerAvatar extends StatelessWidget {
  const PlayerAvatar({
    Key? key,
    required this.player,
  }) : super(key: key);

  final PlayerFieldsMixin player;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: WebsafeSvg.string(
        multiavatar(player.id),
        height: 80,
        width: 80,
      ),
    );
  }
}
