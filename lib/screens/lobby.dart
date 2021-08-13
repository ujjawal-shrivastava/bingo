import 'package:bingo/api/api.dart';
import 'package:bingo/networking/clientProvider.dart';
import 'package:bingo/screens/players.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';

class Room extends StatelessWidget {
  final RoomFieldsMixin room;
  const Room({Key? key, required this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= 768;
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: InkWell(
              onTap: () => FlutterClipboard.copy(this.room.id.toString())
                  .then((value) => showSnack(context, "Copied Room Code!")),
              child: Text(
                "Room ${this.room.id}",
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Flex(
                    direction: isScreenWide ? Axis.horizontal : Axis.vertical,
                    verticalDirection: VerticalDirection.up,
                    children: [
                      Expanded(
                        child: SettingsWidget(
                            startGame: (boardSize) {
                              GameClient.of(context)?.artemisClient.execute(
                                    StartGameQuery(
                                      variables: StartGameArguments(
                                        playerId:
                                            GameClient.of(context)?.playerId,
                                        roomId: room.id,
                                        boardSize: boardSize,
                                      ),
                                    ),
                                  );
                            },
                            canStart: room.players.length > 1 &&
                                room.players
                                    .every((element) => element.isConnected)),
                      ),
                      SizedBox(
                        width: isScreenWide ? 20 : double.infinity,
                        height: isScreenWide ? double.infinity : 20,
                      ),
                      (room.state as RoomFieldsMixin$RoomState$LobbyData)
                                  .lastGame !=
                              null
                          ? LastGameResult(
                              lastgame: (room.state
                                      as RoomFieldsMixin$RoomState$LobbyData)
                                  .lastGame!)
                          : Container(),
                      Expanded(
                          child: Players(
                        players: room.players,
                      )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ScaffoldFeatureController showSnack(BuildContext context, String text) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(text)));
  }
}

class SettingsWidget extends StatefulWidget {
  final void Function(int) startGame;
  final bool canStart;
  const SettingsWidget(
      {Key? key, required this.startGame, required this.canStart})
      : super(key: key);

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  int boardSize = 5;
  int get minBoard => 3;
  int get maxBoard => 11;
  int get divisions => (maxBoard - minBoard) ~/ 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Text(
              "Settings",
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text("Board Size"),
                ),
                Slider(
                  min: minBoard.toDouble(),
                  max: maxBoard.toDouble(),
                  value: boardSize.toDouble(),
                  divisions: divisions,
                  onChanged: (val) {
                    setState(() {
                      boardSize = val.toInt();
                    });
                  },
                  label: '$boardSize',
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                            divisions + 1, (index) => index * 2 + minBoard)
                        .map((e) => Text(e.toString()))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: widget.canStart
                ? ElevatedButton(
                    onPressed: () {
                      widget.startGame(boardSize);
                    },
                    child: Text("Start Game"),
                  )
                : Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        color: Theme.of(context).dividerColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(child: Text("Connect at least 2 players!"))),
          ),
          ElevatedButton(
            onPressed: () => {Navigator.pop(context)},
            child: Text("Leave Room"),
            style: ElevatedButton.styleFrom(primary: Colors.red),
          )
        ],
      ),
    );
  }
}

class LastGameResult extends StatelessWidget {
  final RoomFieldsMixin$RoomState$LobbyData$LastGame lastgame;
  const LastGameResult({Key? key, required this.lastgame}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(getRanks().toString()),
    );
  }

  Map<int, Iterable<RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank>>
      getRanks() {
    final leaderboard = lastgame.lastGame.leaderboard;
    var rank1 = leaderboard.where((element) => element.rank == 1);
    var rank2 = leaderboard.where((element) => element.rank == 2);
    var rank3 = leaderboard.where((element) => element.rank == 3);
    var ranks = {1: rank1, 2: rank2, 3: rank3};
    print(ranks.toString());
    return ranks;
  }
}
