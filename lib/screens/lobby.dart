import 'package:bingo/api/api.dart';
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
                  Expanded(child: SettingsWidget()),
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
                "Players",
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
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
                                        playerFieldsOfCommonPlayer(player).id),
                                    height: 100,
                                    width: 100,
                                  ),
                                  Positioned(
                                    right: 5,
                                    bottom: 5,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: player.isConnected
                                            ? Colors.green
                                            : Colors.grey,
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
                                  playerFieldsOfCommonPlayer(player).name,
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              )
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
    );
  }
}

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({
    Key? key,
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
                onPressed: () {},
                child: Text("Start Game"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
