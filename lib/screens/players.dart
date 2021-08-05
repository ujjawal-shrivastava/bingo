import 'dart:math';

import 'package:flutter/material.dart';
import 'package:multiavatar/multiavatar.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:bingo/api/api.dart';

class Players extends StatelessWidget {
  final List<RoomFieldsMixin$CommonPlayer> players;

  PlayerFieldsMixin playerFieldsOfCommonPlayer(
      RoomFieldsMixin$CommonPlayer player) {
    if (player is RoomFieldsMixin$CommonPlayer$GamePlayer) {
      return player.player;
    } else {
      return (player as RoomFieldsMixin$CommonPlayer$LobbyPlayer).player;
    }
  }

  const Players({
    Key? key,
    required this.players,
  }) : super(key: key);

  final minWidthPlayers = 100.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(0),
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
                  border: Border.all(color: Colors.grey),
                ),
                padding: EdgeInsets.all(20),
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
                          child: Wrap(
                            spacing: 20,
                            children: [
                              ...players.map(
                                (player) => Opacity(
                                  opacity: player.isConnected ? 1 : 0.5,
                                  child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          WebsafeSvg.string(
                                            multiavatar(
                                                playerFieldsOfCommonPlayer(
                                                        player)
                                                    .id),
                                            height: 100,
                                            width: 100,
                                          ),
                                          Positioned(
                                            right: 5,
                                            bottom: 5,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: getStatusColor(player),
                                                border: Border.all(
                                                  color: Theme.of(context)
                                                      .scaffoldBackgroundColor,
                                                  width: 2,
                                                ),
                                              ),
                                              height: 20,
                                              width: 20,
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        child: Text(
                                          playerFieldsOfCommonPlayer(player)
                                              .name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
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
}
