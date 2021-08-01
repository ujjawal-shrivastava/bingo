import 'dart:io';

import 'package:artemis/artemis.dart';
import 'package:bingo/networking/clientProvider.dart';
import 'package:flutter/material.dart';
import 'package:gql_websocket_link/gql_websocket_link.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'api/api.dart';
import 'networking/messagesBuilder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GameClient(
      artemisClient: ArtemisClient.fromLink(
        WebSocketLink(
          null,
          channelGenerator: () => WebSocketChannel.connect(
            Uri.parse(
              'ws://bingotingo.herokuapp.com/',
            ),
            protocols: ['graphql-ws'],
          ),
        ),
      ),
      child: MaterialApp(
        title: 'Bingo Tingo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: _editingController,
          ),
          ElevatedButton(
            onPressed: () async {
              var client = GameClient.of(context)!.artemisClient;
              var createLobby = CreateLobbyMutation(
                variables: CreateLobbyArguments(
                  playerId: _editingController.text,
                  playerName: _editingController.text,
                ),
              );
              var result = await client.execute(createLobby);
              print("Created Room Id ${result.data?.createLobby}");
              var roomId = result.data?.createLobby;
              if (roomId != null) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => GameMessageBuilder(
                          roomId: roomId,
                          playerId: _editingController.text,
                        )));
              }
            },
            child: Text("Create Lobby"),
          )
        ],
      ),
    );
  }
}
