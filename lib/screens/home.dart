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
            controller: GameClient.of(context)?.playerName,
          ),
          ElevatedButton(
            onPressed: () async {
              var client = GameClient.of(context)!.artemisClient;
              var createLobby = CreateLobbyMutation(
                variables: CreateLobbyArguments(
                  playerId: GameClient.of(context)!.playerId,
                  playerName: GameClient.of(context)!.playerName.text,
                ),
              );
              var result = await client.execute(createLobby);
              print("Created Room Id ${result.data?.createLobby}");
              var roomId = result.data?.createLobby;
              if (roomId != null) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => GameMessageBuilder(
                      roomId: roomId,
                      playerId: GameClient.of(context)!.playerId,
                    ),
                  ),
                );
              }
            },
            child: Text("Create Lobby"),
          )
        ],
      ),
    );
  }
}
