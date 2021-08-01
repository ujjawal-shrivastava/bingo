import 'package:artemis/schema/graphql_response.dart';
import 'package:bingo/api/api.dart';
import 'package:bingo/networking/clientProvider.dart';
import 'package:bingo/screens/lobby.dart';
import 'package:flutter/material.dart';

class GameMessageBuilder extends StatefulWidget {
  final String roomId;
  final String playerId;
  GameMessageBuilder({Key? key, required this.roomId, required this.playerId})
      : super(key: key);

  @override
  _GameMessageBuilderState createState() => _GameMessageBuilderState();
}

class _GameMessageBuilderState extends State<GameMessageBuilder> {
  Stream<GraphQLResponse<GameMessages$Subscription>>? stream;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      setState(() {
        stream = GameClient.of(context)
            ?.artemisClient
            .stream(GameMessagesSubscription(
                variables: GameMessagesArguments(
              roomId: widget.roomId,
              playerId: widget.playerId,
            )));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder<GraphQLResponse<GameMessages$Subscription>>(
        stream: stream,
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
