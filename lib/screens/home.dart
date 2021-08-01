import 'package:bingo/networking/clientProvider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController roomIdController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(minWidth: 300, maxWidth: 600),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: TextField(
                  controller: GameClient.of(context)?.playerName,
                  decoration: InputDecoration(
                    labelText: 'Player Name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: TextField(
                  controller: roomIdController,
                  decoration: InputDecoration(
                    labelText: 'Room Id',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              ValueListenableBuilder(
                  valueListenable: roomIdController,
                  builder: (context, value, child) {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40)),
                      onPressed: () async {
                        late var roomId;
                        if (roomIdController.text.isEmpty) {
                          roomId = await GameClient.of(context)?.createRoom();
                        } else {
                          roomId = await GameClient.of(context)
                              ?.joinRoom(roomIdController.text);
                        }
                        if (roomId != null) {
                          Navigator.of(context).pushNamed('/room/$roomId');
                        }
                      },
                      child: Text(roomIdController.text.isEmpty
                          ? "Create Lobby"
                          : "Join Lobby"),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
