import 'package:bingo/api/api.dart';
import 'package:bingo/networking/clientProvider.dart';
import 'package:flutter/material.dart';

class GameBoard extends StatefulWidget {
  final List<
          RoomFieldsMixin$RoomState$GameData$GameState$GameRunning$SelectedCell>
      selectedCells;

  final RoomFieldsMixin$CommonPlayer$GamePlayer$Board board;
  final RoomFieldsMixin$CommonPlayer$GamePlayer turnPlayer;
  final String roomId;
  const GameBoard({
    Key? key,
    required this.selectedCells,
    required this.board,
    required this.turnPlayer,
    required this.roomId,
  }) : super(key: key);

  @override
  _GameBoardState createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  List<int> get cellValues {
    List<int> cellval = [];
    widget.board.numbers.forEach((element) {
      cellval.addAll(element);
    });
    return cellval;
  }

  bool get isCurrentMove =>
      widget.turnPlayer.player.id == GameClient.of(context)!.playerId;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            child: Text(isCurrentMove
                ? 'Your Turn'
                : '${widget.turnPlayer.player.name} is choosing...'),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  width: 1000,
                  // height: 1000,
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: widget.board.numbers.length,
                    childAspectRatio: 1,
                    children: [
                      ...List.generate(cellValues.length, (index) => index).map(
                        (index) {
                          var e = cellValues[index];

                          return InkWell(
                            onTap: () async {
                              var result = await GameClient.of(context)
                                  ?.artemisClient
                                  .execute(
                                    PlayerMoveQuery(
                                      variables: PlayerMoveArguments(
                                        playerId:
                                            GameClient.of(context)?.playerId,
                                        roomId: widget.roomId,
                                        number: e,
                                      ),
                                    ),
                                  );
                              print(
                                  "Result $result data ${result?.data} Error ${result?.errors}");
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Center(
                                  child: Text(
                                    e > 0 ? e.toString() : " ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        ?.copyWith(
                                          fontSize: 48,
                                          color: widget.selectedCells.any(
                                                  (element) =>
                                                      element.cellValue == e)
                                              ? Colors.black
                                              : Colors.white,
                                        ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: widget.selectedCells.any(
                                        (element) => element.cellValue == e)
                                    ? Colors.yellow
                                    : Colors.grey.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              margin: EdgeInsets.all(10),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
