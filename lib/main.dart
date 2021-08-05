import 'dart:async';

import 'package:artemis/artemis.dart';
import 'package:bingo/networking/clientProvider.dart';
import 'package:flutter/material.dart';
import 'package:gql_websocket_link/gql_websocket_link.dart';
import 'package:localstorage/localstorage.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'api/api.dart';
import 'networking/messagesBuilder.dart';
import 'screens/home.dart';

void main() async {
  var playerId = Uuid().v4();
  final storage = new LocalStorage('storage', null, {'player_id': playerId});
  await storage.ready;
  playerId = storage.getItem('player_id');
  runApp(
    MyApp(
      storage: storage,
      playerId: playerId,
    ),
  );
}

class MyApp extends StatefulWidget {
  final LocalStorage storage;
  final String playerId;
  MyApp({required this.storage, required this.playerId});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ArtemisClient client = ArtemisClient.fromLink(
    WebSocketLink(
      null,
      channelGenerator: () => WebSocketChannel.connect(
        Uri.parse(
          'ws://bingotingo.herokuapp.com/',
        ),
        protocols: ['graphql-ws'],
      ),
    ),
  );
  late Timer pingTimer;
  @override
  void initState() {
    super.initState();
    pingTimer = Timer.periodic(Duration(seconds: 2), (timer) {
      client.execute(PingQuery());
    });
  }

  @override
  Widget build(BuildContext context) {
    return GameClient(
      localStorage: widget.storage,
      playerId: widget.playerId,
      artemisClient: client,
      child: MaterialApp(
        title: 'Bingo Tingo',
        routes: {
          '/': (context) => Home(),
        },
        onGenerateRoute: (settings) {
          var reg = RegExp(r'\/room\/(\w+)');
          print("Room Path ${settings.name}");
          var roomId = reg.firstMatch(settings.name ?? '');
          if (roomId != null) {
            print("RoomId $roomId");
            return MaterialPageRoute(
              builder: (context) => GameMessageBuilder(
                roomId: roomId.group(1) ?? '',
                playerId: GameClient.of(context)!.playerId,
              ),
            );
          }
        },
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
      ),
    );
  }
}
