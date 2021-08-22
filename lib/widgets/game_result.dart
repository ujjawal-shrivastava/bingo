import 'package:bingo/api/api.dart';
import 'package:bingo/screens/lobby.dart';
import 'package:bingo/screens/players.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ResultDialog extends StatelessWidget {
  final LastGameResult result;
  ResultDialog({required this.result, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IntrinsicWidth(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Result",
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
            ),
            ...result.getRanks().keys.map(
                  (k) => Column(
                    children: [
                      ...result.getRanks()[k]!.map((e) => Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                RankIndicator(rank: e),
                                PlayerCard(rank: e)
                              ],
                            ),
                          )),
                      Divider()
                    ],
                  ),
                )
            // ...result.firsts.map(
            //   (e) => Column(
            //     children: [
            //       Container(
            //         margin: EdgeInsets.only(bottom: 10),
            //         child: Row(
            //           mainAxisSize: MainAxisSize.min,
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           children: [
            //             RankIndicator(rank: e),
            //             PlayerCard(rank: e)
            //           ],
            //         ),
            //       ),
            //       Divider()
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

class PlayerCard extends StatelessWidget {
  final RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank rank;
  const PlayerCard({Key? key, required this.rank}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: 60,
        height: 60,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: PlayerAvatar(player: rank.player),
        ),
      ),
      Text(
        rank.player.name,
        style: Theme.of(context).textTheme.headline6,
      ),
    ]);
  }
}

class RankIndicator extends StatelessWidget {
  final RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank rank;
  const RankIndicator({Key? key, required this.rank}) : super(key: key);

  Color getRankColor(int rank) {
    if (rank == 1) {
      return Color(0xFFFFD700);
    } else if (rank == 2) {
      return Color(0xFFC0C0C0);
    } else if (rank == 3) {
      return Color(0xFFCD7F32);
    } else {
      return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: CircleAvatar(
        child: Text(
          rank.rank.toString(),
          style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        backgroundColor: getRankColor(rank.rank),
      ),
    );
  }
}
