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
    } else if (player.data == null) {
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
                  (((player as RoomFieldsMixin$CommonPlayer$GamePlayer).data
                              as RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData)
                          .board
                          ?.score !=
                      null))
                Container(
                  child: Text(
                    "${((player as RoomFieldsMixin$CommonPlayer$GamePlayer).data as RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData).board?.score}/${((player as RoomFieldsMixin$CommonPlayer$GamePlayer).data as RoomFieldsMixin$CommonPlayer$GamePlayer$PlayerGameData$BingoPlayerData).board?.numbers.length}",
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
                                constraints: BoxConstraints(maxWidth: 500),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(30),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.person_remove,
                                                size: Theme.of(context)
                                                    .textTheme
                                                    .headline2
                                                    ?.fontSize,
                                              ),
                                              SizedBox(height: 16),
                                              Text("Are You Sure?",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline5),
                                              SizedBox(height: 10),
                                              Text(
                                                  "You are about to kick ${playerFieldsOfCommonPlayer(player).name} out of the room. Are you sure about that?",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1,
                                                  textAlign: TextAlign.center),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                                child: InkWell(
                                              onTap: () => Navigator.of(context)
                                                  .pop(false),
                                              child: Container(
                                                padding: EdgeInsets.all(18),
                                                color: Theme.of(context)
                                                    .dividerColor,
                                                child: Center(
                                                    child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.clear,
                                                      size: Theme.of(context)
                                                          .textTheme
                                                          .subtitle1
                                                          ?.fontSize,
                                                    ),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Text(
                                                      "Cancel",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .subtitle1,
                                                    ),
                                                  ],
                                                )),
                                              ),
                                            )),
                                            Expanded(
                                                child: InkWell(
                                              onTap: () => Navigator.of(context)
                                                  .pop(true),
                                              child: Container(
                                                padding: EdgeInsets.all(18),
                                                color: Theme.of(context)
                                                    .errorColor,
                                                child: Center(
                                                    child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.block,
                                                      size: Theme.of(context)
                                                          .textTheme
                                                          .subtitle1
                                                          ?.fontSize,
                                                    ),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Text(
                                                      "Kick",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .subtitle1,
                                                    ),
                                                  ],
                                                )),
                                              ),
                                            ))
                                          ],
                                        ),
                                        //
                                      ]),
                                ),
                              ),
                            ],
                          )));
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
