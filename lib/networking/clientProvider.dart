import 'package:artemis/artemis.dart';
import 'package:flutter/material.dart';

class GameClient extends InheritedWidget {
  final ArtemisClient artemisClient;

  GameClient({Key? key, required this.child, required this.artemisClient})
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
