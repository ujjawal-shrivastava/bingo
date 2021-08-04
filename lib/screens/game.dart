import 'package:bingo/api/api.dart';
import 'package:bingo/screens/board_builder.dart';
import 'package:bingo/screens/lobby.dart';
import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  final RoomFieldsMixin room;
  Game({required this.room, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SelectableText(
              "Room ${this.room.id}",
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 3,
                    child: Players(
                      players: room.players,
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: BoardBuilder(
                      boardSize:
                          (room.state as RoomFieldsMixin$RoomState$GameData)
                              .boardSize,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
