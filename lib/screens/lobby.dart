import 'dart:ui';

import 'package:bingo/api/api.dart';
import 'package:bingo/networking/clientProvider.dart';
import 'package:bingo/screens/players.dart';
import 'package:bingo/widgets/game_result.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class Room extends StatefulWidget {
  final RoomFieldsMixin room;
  const Room({Key? key, required this.room}) : super(key: key);

  @override
  _RoomState createState() => _RoomState();
}

class _RoomState extends State<Room> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      if ((widget.room.state as RoomFieldsMixin$RoomState$LobbyData).lastGame !=
          null) {
        showDialog(
          context: context,
          builder: (context) => Dialog(
            child: Stack(
              fit: StackFit.passthrough,
              children: [
                ResultDialog(
                  result: LastGameResult(
                    lastgame: (widget.room.state
                            as RoomFieldsMixin$RoomState$LobbyData)
                        .lastGame!,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.close),
                  ),
                )
              ],
            ),
          ),
        );
      }
    });
  }

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
          title: Stack(alignment: AlignmentDirectional.centerStart, children: [
            Positioned(
                child: Opacity(
              opacity: 0.8,
              child: InkWell(
                onTap: () => {
                  Share.share(kIsWeb
                      ? "Join me for a quick game at : ${Uri.base}"
                      : this.widget.room.id)
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(Icons.add,
                              color:
                                  Theme.of(context).textTheme.bodyText1?.color,
                              size: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.fontSize)),
                      Text("Invite",
                          style: Theme.of(context).textTheme.bodyText1,
                          overflow: TextOverflow.visible),
                    ],
                  ),
                ),
              ),
            )),
            Center(
              child: InkWell(
                onTap: () =>
                    FlutterClipboard.copy(this.widget.room.id.toString()).then(
                        (value) => showSnack(context, "Copied Room Code!")),
                child: Text(
                  "Room ${this.widget.room.id}",
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ]),
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
                            startBingoGame: (boardSize) {
                              GameClient.of(context)?.artemisClient.execute(
                                    BingoStartGameQuery(
                                      variables: BingoStartGameArguments(
                                        playerId:
                                            GameClient.of(context)!.playerId,
                                        roomId: widget.room.id,
                                        boardSize: boardSize,
                                      ),
                                    ),
                                  );
                            },
                            startBoxesGame: (width, height) {
                              GameClient.of(context)?.artemisClient.execute(
                                    BoxesStartGameQuery(
                                      variables: BoxesStartGameArguments(
                                        playerId:
                                            GameClient.of(context)!.playerId,
                                        roomId: widget.room.id,
                                        boardWidth: width,
                                        boardHeight: height,
                                      ),
                                    ),
                                  );
                            },
                            leaveRoom: () async {
                              await GameClient.of(context)
                                  ?.disconnect(widget.room.id);
                              Navigator.pop(context);
                            },
                            canStart: widget.room.players.length > 1 &&
                                widget.room.players
                                    .every((element) => element.isConnected)),
                      ),
                      SizedBox(
                        width: isScreenWide ? 20 : double.infinity,
                        height: isScreenWide ? double.infinity : 20,
                      ),
                      Expanded(
                        child: Players(
                          players: widget.room.players,
                          onKickPlayer: (playerId) async {
                            GameClient.of(context)
                                ?.kick(widget.room.id, playerId);
                          },
                        ),
                      ),
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
  final void Function(int) startBingoGame;
  final void Function(int, int) startBoxesGame;
  final Function leaveRoom;
  final bool canStart;

  const SettingsWidget({
    Key? key,
    required this.startBingoGame,
    required this.canStart,
    required this.leaveRoom,
    required this.startBoxesGame,
  }) : super(key: key);

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget>
    with SingleTickerProviderStateMixin {
  int bingoBoardSize = 5;
  int get minBingoBoard => 3;
  int get maxBingoBoard => 11;
  int get bingoBoardDivisions => (maxBingoBoard - minBingoBoard) ~/ 2;

  int boxesBoardWidth = 5;
  int boxesBoardHeight = 5;
  int get minBoxesBoardWidth => 5;
  int get maxBoxesBoardWidth => 10;
  int get boxesBoardDivisions => (maxBoxesBoardWidth - minBoxesBoardWidth) ~/ 1;

  late TabController pageController;

  @override
  void initState() {
    pageController = TabController(length: 2, vsync: this);
    super.initState();
  }

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
          TabBar(controller: pageController, tabs: [
            Tab(
              text: 'Bingo',
            ),
            Tab(
              text: 'Boxes',
            )
          ]),
          Expanded(
            child: TabBarView(
              controller: pageController,
              children: [
                SingleChildScrollView(child: buildBingoSetting()),
                SingleChildScrollView(child: buildBoxesSetting()),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: widget.canStart
                ? ElevatedButton(
                    onPressed: () {
                      if (pageController.index == 0) {
                        widget.startBingoGame(bingoBoardSize);
                      } else {
                        widget.startBoxesGame(boxesBoardWidth, boxesBoardWidth);
                      }
                    },
                    child: Text("Start Game"),
                  )
                : Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        color: Theme.of(context).dividerColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(child: Text("Room not ready"))),
          ),
          ElevatedButton(
            onPressed: () {
              widget.leaveRoom();
            },
            child: Text("Leave Room"),
            style: ElevatedButton.styleFrom(primary: Colors.red),
          )
        ],
      ),
    );
  }

  Container buildBingoSetting() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 20,
              top: 20,
            ),
            child: Text("Board Size"),
          ),
          Slider(
            min: minBingoBoard.toDouble(),
            max: maxBingoBoard.toDouble(),
            value: bingoBoardSize.toDouble(),
            divisions: bingoBoardDivisions,
            onChanged: (val) {
              setState(() {
                bingoBoardSize = val.toInt();
              });
            },
            label: '$bingoBoardSize',
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(bingoBoardDivisions + 1,
                      (index) => index * 2 + minBingoBoard)
                  .map((e) => Text(e.toString()))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Container buildBoxesSetting() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 20,
              top: 20,
            ),
            child: Text("Board Width"),
          ),
          Slider(
            min: minBoxesBoardWidth.toDouble(),
            max: maxBoxesBoardWidth.toDouble(),
            value: boxesBoardWidth.toDouble(),
            divisions: boxesBoardDivisions,
            onChanged: (val) {
              setState(() {
                boxesBoardWidth = val.toInt();
              });
            },
            label: '$boxesBoardWidth',
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(boxesBoardDivisions + 1,
                      (index) => index * 1 + minBoxesBoardWidth)
                  .map((e) => Text(e.toString()))
                  .toList(),
            ),
          ),

          //Height Slider
          Container(
            margin: EdgeInsets.only(
              left: 20,
              top: 20,
            ),
            child: Text("Board Height"),
          ),
          Slider(
            min: minBoxesBoardWidth.toDouble(),
            max: maxBoxesBoardWidth.toDouble(),
            value: boxesBoardHeight.toDouble(),
            divisions: boxesBoardDivisions,
            onChanged: (val) {
              setState(() {
                boxesBoardHeight = val.toInt();
              });
            },
            label: '$boxesBoardHeight',
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(boxesBoardDivisions + 1,
                      (index) => index * 1 + minBoxesBoardWidth)
                  .map((e) => Text(e.toString()))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class LastGameResult extends StatelessWidget {
  final RoomFieldsMixin$RoomState$LobbyData$LastGame lastgame;
  const LastGameResult({Key? key, required this.lastgame}) : super(key: key);

  List<RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank> get firsts =>
      getRanks()[1] ?? [];

  List<RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank> get second =>
      getRanks()[2] ?? [];
  List<RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank> get third =>
      getRanks()[3] ?? [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(getRanks().toString()),
    );
  }

  Map<int, List<RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank>>
      getRanks() {
    final leaderboard = lastgame.lastGame.leaderboard.fold<
            Map<
                int,
                List<
                    RoomFieldsMixin$RoomState$LobbyData$LastGame$GameData$Rank>>>(
        {}, (previousValue, element) {
      if (previousValue.containsKey(element.rank)) {
        previousValue[element.rank]?.add(element);
      } else {
        previousValue[element.rank] = [element];
      }
      return previousValue;
    });
    return leaderboard;
  }
}
