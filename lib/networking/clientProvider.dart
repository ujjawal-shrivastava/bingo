import 'dart:async';

import 'package:artemis/artemis.dart';
import 'package:bingo/api/api.dart';
import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

class GameClient extends InheritedWidget {
  final ArtemisClient artemisClient;

  final LocalStorage localStorage;

  String get playerId => localStorage.getItem('player_id');

  TextEditingController playerName = TextEditingController();

  GameClient(
      {Key? key,
      required this.child,
      required this.artemisClient,
      required this.localStorage})
      : super(key: key, child: child);

  final Widget child;

  static GameClient? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GameClient>();
  }

  @override
  bool updateShouldNotify(GameClient oldWidget) {
    return true;
  }

  Future<String> createRoom() async {
    if (playerName.text.isEmpty) {
      throw "Name empty";
    }
    var createLobby = CreateLobbyMutation(
      variables: CreateLobbyArguments(
        playerId: playerId,
        playerName: playerName.text,
      ),
    );
    var result = await artemisClient.execute(createLobby);
    var roomId = result.data?.createLobby;
    if (roomId == null) {
      throw "Can not create Room";
    } else {
      return roomId;
    }
  }

  Future<String> joinRoom(String roomId) async {
    if (playerName.text.isEmpty) {
      throw "Name empty";
    }
    var createLobby = JoinLobbyMutation(
      variables: JoinLobbyArguments(
        playerId: playerId,
        playerName: playerName.text,
        roomId: roomId,
      ),
    );
    var result = await artemisClient.execute(createLobby);
    if (result.data?.joinLobby == null) {
      throw "Cannot join Lobby";
    } else {
      return roomId;
    }
  }

  Future<Stream<GraphQLResponse<GameMessages$Subscription>>> connect(
      String roomId) async {
    if (playerName.text.isEmpty) {
      throw "Name empty";
    }

    print("Connect to room $roomId");
    var streamData = artemisClient.stream(
      GameMessagesSubscription(
        variables: GameMessagesArguments(
          roomId: roomId,
          playerId: playerId,
        ),
      ),
    );
    var controller = StreamController<
        GraphQLResponse<GameMessages$Subscription>>.broadcast();
    var completer =
        Completer<Stream<GraphQLResponse<GameMessages$Subscription>>>();
    bool isFirst = true;
    streamData.listen((event) async {
      if (isFirst) {
        if (event.data != null) {
          completer.complete(controller.stream);
          await Future.delayed(Duration(milliseconds: 100));
        } else {
          completer.completeError("Cant connect");
          debugPrint("Event $event Data ${event.data} Error ${event.errors}");
        }
      }
      controller.add(event);
    }).onDone(() {
      controller.close();
    });
    return completer.future;
  }
}
