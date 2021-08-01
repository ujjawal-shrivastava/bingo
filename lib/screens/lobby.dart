import 'package:bingo/api/api.dart';
import 'package:flutter/material.dart';
import 'package:multiavatar/multiavatar.dart';
import 'dart:html';

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
            Text(
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
                    players: (room.state as RoomFieldsMixin$RoomState$LobbyData)
                        .players
                        .map((e) => e.player)
                        .toList(),
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
  final List<PlayerFieldsMixin> players;
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
            Container(
              child: Wrap(
                children: [
                  ...players.map(
                    (player) => Column(
                      children: [
                        WebsafeSvg.string(
                          multiavatar(player.id),
                          height: 100,
                          width: 100,
                        ),
                        Container(
                          child: Text(player.name),
                        )
                      ],
                    ),
                  )
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

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({
    Key? key,
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
                "Settings",
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Board Size",
                ),
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
