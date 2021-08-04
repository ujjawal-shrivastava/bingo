import 'dart:async';

import 'package:artemis/client.dart';
import 'package:artemis/schema/graphql_response.dart';
import 'package:bingo/api/api.dart';
import 'package:bingo/networking/clientProvider.dart';
import 'package:bingo/screens/game.dart';
import 'package:bingo/screens/lobby.dart';
import 'package:flutter/material.dart';
import 'package:gql_websocket_link/gql_websocket_link.dart';

class GameMessageBuilder extends StatefulWidget {
  final String roomId;
  final String playerId;
  GameMessageBuilder({Key? key, required this.roomId, required this.playerId})
      : super(key: key);

  @override
  _GameMessageBuilderState createState() => _GameMessageBuilderState();
}

class _GameMessageBuilderState extends State<GameMessageBuilder> {
  var stream =
      StreamController<GraphQLResponse<GameMessages$Subscription>>.broadcast();

  StreamSubscription<GraphQLResponse<GameMessages$Subscription>>? subscription;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      var gc = GameClient.of(context)!;
      if (gc.playerName.text.isEmpty) {
        showDialog(
            context: context,
            builder: (context) => Dialog(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          child: TextField(
                            controller: gc.playerName,
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {}, child: Text("Join Room"))
                      ],
                    ),
                  ),
                ));
      } else {
        try {
          connect();
        } catch (e) {
          if (Navigator.of(context).canPop()) {
            Navigator.of(context).pop();
          } else {
            Navigator.of(context).pushNamed("/");
          }
        }
      }
    });
  }

  connect() async {
    var streamData = await GameClient.of(context)!.connect(widget.roomId);
    subscription = streamData.listen((event) {
      print("Event ${event.data}");
      stream.add(event);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder<GraphQLResponse<GameMessages$Subscription>>(
        stream: stream.stream,
        builder: (context, ass) {
          if (ass.error != null) {
            print("Error: ${ass.error}");
          }
          if (ass.data != null) {
            var message = ass.data?.data?.serverMessages;
            print("Message: ${ass.data?.data} Error: ${ass.data?.errors}");
            if (message != null) {
              RoomFieldsMixin? room;
              if (message
                  is GameMessages$Subscription$ServerResponse$PlayerJoined) {
                room = message.room;
              } else if (message
                  is GameMessages$Subscription$ServerResponse$PlayerConnected) {
                room = message.room;
              } else if (message
                  is GameMessages$Subscription$ServerResponse$PlayerLeft) {
                room = message.room;
              } else if (message
                  is GameMessages$Subscription$ServerResponse$GameMessage) {
                room = message.room;
              }
              if (room != null) {
                if (room.state is RoomFieldsMixin$RoomState$LobbyData) {
                  return Room(room: room);
                } else {
                  return Game(room: room);
                }
              }
            }
          }
          return Container(
            child: Center(
              child: Text("NOTHING"),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }
}
