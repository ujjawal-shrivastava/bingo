import 'package:bingo/api/api.dart';
import 'package:flutter/material.dart';

class Room extends StatelessWidget {
  final RoomFieldsMixin room;
  const Room({Key? key, required this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Room ${this.room.id}",
          )
        ],
      ),
    );
  }
}
