import 'package:bingo/api/api.dart';
import 'package:bingo/networking/clientProvider.dart';
import 'package:bingo/networking/messagesBuilder.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: GameClient.of(context)!.playerName,
          ),
          ElevatedButton(
            onPressed: () async {
              var roomId = await GameClient.of(context)?.createRoom();
              if (roomId != null) {
                Navigator.of(context).pushNamed('/room/$roomId');
              }
            },
            child: Text("Create Lobby"),
          )
        ],
      ),
    );
  }
}
