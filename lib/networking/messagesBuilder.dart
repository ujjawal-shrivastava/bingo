import 'dart:async';

import 'package:artemis/client.dart';
import 'package:artemis/schema/graphql_response.dart';
import 'package:bingo/api/api.dart';
import 'package:bingo/networking/clientProvider.dart';
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
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      setState(() {
        var artemisClient = GameClient.of(context)!.artemisClient;
        var streamData = artemisClient.stream(
          GameMessagesSubscription(
            variables: GameMessagesArguments(
              roomId: widget.roomId,
              playerId: widget.playerId,
            ),
          ),
        );
        streamData.listen((event) {
          print("Event ${event.data}");
          stream.add(event);
        });
        // stream?.listen((event) {
        //   print("Event: $event");
        // });
      });
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
            print("Message: $message");
            if (message != null) {
              if (message
                  is GameMessages$Subscription$ServerResponse$PlayerConnected) {
                var room = message.room;
                return Room(room: room);
              }
            }
          }
          return Container();
        },
      ),
    );
  }
}
