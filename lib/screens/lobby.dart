import 'package:bingo/api/api.dart';
import 'package:bingo/networking/clientProvider.dart';
import 'package:bingo/screens/players.dart';
import 'package:flutter/material.dart';
import 'package:multiavatar/multiavatar.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Room extends StatelessWidget {
  final RoomFieldsMixin room;
  const Room({Key? key, required this.room}) : super(key: key);

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
                    child: SettingsWidget(
                      startGame: (boardSize) {
                        GameClient.of(context)?.artemisClient.execute(
                              StartGameQuery(
                                variables: StartGameArguments(
                                  playerId: GameClient.of(context)?.playerId,
                                  roomId: room.id,
                                  boardSize: boardSize,
                                ),
                              ),
                            );
                      },
                    ),
                  ),
                  Expanded(
                      child: Players(
                    players: room.players,
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SettingsWidget extends StatefulWidget {
  final void Function(int) startGame;
  const SettingsWidget({
    Key? key,
    required this.startGame,
  }) : super(key: key);

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  int boardSize = 5;
  int get minBoard => 3;
  int get maxBoard => 11;
  int get divisions => (maxBoard - minBoard) ~/ 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
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
            Container(
              child: Text(
                "Settings",
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text("Board Size"),
                  ),
                  Slider(
                    min: minBoard.toDouble(),
                    max: maxBoard.toDouble(),
                    value: boardSize.toDouble(),
                    divisions: divisions,
                    onChanged: (val) {
                      setState(() {
                        boardSize = val.toInt();
                      });
                    },
                    label: '$boardSize',
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                              divisions + 1, (index) => index * 2 + minBoard)
                          .map((e) => Text(e.toString()))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  widget.startGame(boardSize);
                },
                child: Text("Start Game"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
