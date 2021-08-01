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
      body: Center(
        child: Container(
          constraints: BoxConstraints(minWidth: 300, maxWidth: 600),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                  controller: GameClient.of(context)?.playerName,
                  decoration: InputDecoration(
                    hintText: 'Player Name',
                    border: OutlineInputBorder(),
                  )),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    padding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
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
        ),
      ),
    );
  }
}
