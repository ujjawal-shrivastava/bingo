import 'package:artemis/artemis.dart';
import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

class GameClient extends InheritedWidget {
  final ArtemisClient artemisClient;

  final LocalStorage localStorage;

  String get playerId => localStorage.getItem('player_id');

  TextEditingController get playerName => TextEditingController();

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
}
