import 'package:bingo/networking/clientProvider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(minWidth: 300, maxWidth: 600),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                  controller: GameClient.of(context)?.playerName,
                  decoration: InputDecoration(
                    hintText: 'Player Name',
                    border: OutlineInputBorder(),
                  )),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    padding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
                onPressed: () async {
                  var roomId = await GameClient.of(context)?.createRoom();
                  if (roomId != null) {
                    Navigator.of(context).pushNamed('/room/$roomId');
                  }
                },
                child: Text("Create Lobby"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
