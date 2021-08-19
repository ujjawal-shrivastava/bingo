import 'package:bingo/networking/clientProvider.dart';
import 'package:bingo/networking/messagesBuilder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  final String initialRoomId;
  Home({this.initialRoomId = '', Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController roomIdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.initialRoomId.isNotEmpty) {
      roomIdController.text = widget.initialRoomId;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
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
                    textCapitalization: TextCapitalization.characters,
                    inputFormatters: [
                      UpperCaseTextFormatter(),
                    ],
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
                            textStyle:
                                Theme.of(context).textTheme.bodyText1?.copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40)),
                        onPressed: () async {
                          try {
                            late var roomId;
                            if (roomIdController.text.isEmpty) {
                              roomId =
                                  await GameClient.of(context)?.createRoom();
                            } else {
                              roomId = await GameClient.of(context)
                                  ?.joinRoom(roomIdController.text);
                            }
                            if (roomId != null) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  settings: RouteSettings(name: '/$roomId'),
                                  builder: (context) => GameMessageBuilder(
                                      key: Key(roomId),
                                      roomId: roomId,
                                      playerId:
                                          GameClient.of(context)?.playerId ??
                                              ''),
                                ),
                              );
                            }
                          } catch (e) {
                            print(e);
                          }
                        },
                        child: Text(
                          roomIdController.text.isEmpty
                              ? "Create Lobby"
                              : "Join Lobby",
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
        text: newValue.text.toUpperCase(), selection: newValue.selection);
  }
}
