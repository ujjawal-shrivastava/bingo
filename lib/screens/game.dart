import 'package:bingo/api/api.dart';
import 'package:bingo/networking/clientProvider.dart';
import 'package:bingo/screens/board_builder.dart';
import 'package:bingo/screens/game_board.dart';
import 'package:bingo/screens/players.dart';
import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  final RoomFieldsMixin room;
  Game({required this.room, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= 768;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            "Room ${this.room.id}",
            style: Theme.of(context).textTheme.headline6,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Flex(
                direction: isScreenWide ? Axis.horizontal : Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 3,
                    child: Players(
                      players: room.players,
                      ranks: (room.state as RoomFieldsMixin$RoomState$GameData)
                          .leaderboard,
                      onKickPlayer: (playerId) async {
                        GameClient.of(context)?.kick(room.id, playerId);
                      },
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: buildBoard(
                      context,
                      GameClient.of(context)!,
                      room.state as RoomFieldsMixin$RoomState$GameData,
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

  buildBoard(BuildContext context, GameClient gameClient,
      RoomFieldsMixin$RoomState$GameData roomState) {
    if (roomState.gameState
        is RoomFieldsMixin$RoomState$GameData$GameState$BoardCreation) {
      return BoardBuilder(
        onReadyBoard: (board) async {
          print("Ready board $board ${gameClient.playerId}");

          var response = await gameClient.artemisClient.execute(
            ReadyBoardQuery(
              variables: ReadyBoardArguments(
                playerId: gameClient.playerId,
                roomId: room.id,
                board: board,
              ),
            ),
          );
          print("Board ready $response ${response.data} ${response.errors}");
        },
        boardSize: roomState.boardSize,
      );
    } else {
      var gameRuningState = roomState.gameState
          as RoomFieldsMixin$RoomState$GameData$GameState$GameRunning;

      var player = room.players.firstWhere((element) =>
              (element as RoomFieldsMixin$CommonPlayer$GamePlayer).player.id ==
              GameClient.of(context)?.playerId)
          as RoomFieldsMixin$CommonPlayer$GamePlayer;

      var turnPlayer = room.players.firstWhere((element) =>
          (element as RoomFieldsMixin$CommonPlayer$GamePlayer).player.id ==
          gameRuningState.turn) as RoomFieldsMixin$CommonPlayer$GamePlayer;

      return GameBoard(
        selectedCells: gameRuningState.selectedNumbers,
        board: player.board!,
        turnPlayer: turnPlayer,
        roomId: room.id,
      );
    }
  }
}
