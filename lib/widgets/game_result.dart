import 'package:bingo/screens/lobby.dart';
import 'package:bingo/screens/players.dart';
import 'package:flutter/material.dart';

class ResultDialog extends StatelessWidget {
  final LastGameResult result;
  ResultDialog({required this.result, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ...result.firsts.map(
            (e) => PlayerAvatar(player: e.player),
          )
        ],
      ),
    );
  }
}
