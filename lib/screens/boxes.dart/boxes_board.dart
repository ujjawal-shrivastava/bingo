import 'package:bingo/networking/clientProvider.dart';
import 'package:bingo/screens/players.dart';
import 'package:flutter/material.dart';
import 'package:bingo/api/api.dart';

typedef BoxesData = RoomFieldsMixin$RoomState$GameData$Game$Boxes;

class BoxesBoard extends StatefulWidget {
  final BoxesData data;
  final RoomFieldsMixin$CommonPlayer$GamePlayer turnPlayer;
  final RoomFieldsMixin$RoomState$GameData gameData;
  final String roomId;

  BoxesBoard(
      {required this.data,
      required this.turnPlayer,
      required this.gameData,
      required this.roomId});

  @override
  _BoxesBoardState createState() => _BoxesBoardState();
}

class _BoxesBoardState extends State<BoxesBoard> {
  Color getCellColor(RoomFieldsMixin$RoomState$GameData$Game$Boxes$Cell e) {
    if (e.occupiedBy != null) {
      return getPlayerColor(e.occupiedBy!);
    } else {
      return Colors.grey.withOpacity(0.1);
    }
  }

  bool get isCurrentMove =>
      widget.data.turn == GameClient.of(context)!.playerId;

  int vertexradius = 30;
  int dragvertexradius = 40;

  Offset dragupoffset = Offset.zero;
  int dragIndex = -1;

  callMove(int edgeId) {
    // print('send edgeId $edgeId ');
    GameClient.of(context)!.artemisClient.execute(
          BoxesPlayerMovQuery(
            variables: BoxesPlayerMovArguments(
              edgeId: edgeId,
              roomId: widget.roomId,
              playerId: GameClient.of(context)!.playerId,
            ),
          ),
        );
  }

  Color getPlayerColor(String playerId) {
    var player = widget.gameData.players
        .firstWhere((element) => element.player.id == playerId);
    var color = (player.data
            as RoomFieldsMixin$RoomState$GameData$GamePlayer$PlayerGameData$BoxesPlayerData)
        .color;
    return HexColor.getColorFromHex(color);
  }

  bool isEdgeOccupied(int id) {
    return widget.data.horizontalEdges
        .followedBy(widget.data.verticalEdges)
        .any((element) =>
            (element
                is RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Occupied) &&
            element.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Text(
              isCurrentMove
                  ? 'Your Turn'
                  : '${widget.turnPlayer.player.name} is choosing...',
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Center(
              child: AspectRatio(
                aspectRatio: widget.data.width / widget.data.height,
                child: Container(
                  // width: 1000,
                  // height: 1000,
                  child: Stack(
                    fit: StackFit.passthrough,
                    clipBehavior: Clip.none,
                    children: [
                      GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: widget.data.width,
                        childAspectRatio: 1,
                        children: [
                          ...List.generate(
                              widget.data.cells.length, (index) => index).map(
                            (index) {
                              var e = widget.data.cells[index];

                              return Container(
                                // padding: EdgeInsets.all(10),
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Center(
                                    child: Text(
                                      ' ',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: getCellColor(e),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                // margin: EdgeInsets.all(10),
                              );
                            },
                          ),
                        ],
                      ),
                      Positioned.fill(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ...List.generate(widget.data.height, (i) {
                              return Expanded(
                                  child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ...List.generate(widget.data.width + 1, (j) {
                                    var index =
                                        (i * (widget.data.width + 1)) + j;
                                    // print(index);
                                    var edge =
                                        widget.data.horizontalEdges[index];
                                    Color color = Colors.grey;
                                    var width = 2.0;
                                    if (edge
                                        is RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Occupied) {
                                      color = Colors.grey;
                                      width = 20;
                                    }
                                    late int edgeId;
                                    if (edge
                                        is RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Occupied) {
                                      edgeId = edge.id;
                                    } else if (edge
                                        is RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Unoccupied) {
                                      edgeId = edge.id;
                                    } else {
                                      edgeId = -1;
                                    }
                                    return Container(
                                      width: 20,
                                      child: Center(
                                        child: Container(
                                          width: width,
                                          color: color,
                                        ),
                                      ),
                                    );
                                  })
                                ],
                              ));
                            })
                          ],
                        ),
                      ),
                      Positioned.fill(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ...List.generate(widget.data.height + 1, (i) {
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                // mainAxisAlignment:
                                // MainAxisAlignment.spaceBetween,
                                children: [
                                  ...List.generate(widget.data.width, (j) {
                                    var index = (i * (widget.data.width)) + j;
                                    // print(index);
                                    var edge = widget.data.verticalEdges[index];
                                    Color color = Colors.grey;
                                    var width = 2.0;

                                    if (edge
                                        is RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Occupied) {
                                      color = Colors.grey;
                                      width = 20;
                                    }
                                    late int edgeId;
                                    if (edge
                                        is RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Occupied) {
                                      edgeId = edge.id;
                                    } else if (edge
                                        is RoomFieldsMixin$RoomState$GameData$Game$Boxes$EdgeType$Unoccupied) {
                                      edgeId = edge.id;
                                    } else {
                                      edgeId = -1;
                                    }
                                    return Expanded(
                                      child: Container(
                                        height: 20,
                                        child: Center(
                                          child: Container(
                                            height: width,
                                            color: color,
                                          ),
                                        ),
                                      ),
                                    );
                                  })
                                ],
                              );
                            })
                          ],
                        ),
                      ),
                      Positioned.fill(
                        // left: -vertexradius / 2,
                        // right: -vertexradius / 2,
                        // top: -vertexradius / 2,
                        // bottom: -vertexradius / 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ...List.generate(widget.data.height + 1, (i) {
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ...List.generate(widget.data.width + 1, (j) {
                                    var index =
                                        (i * (widget.data.width + 1)) + j;
                                    // print(index);
                                    return Draggable<int>(
                                      data: index,
                                      onDragStarted: () {
                                        setState(() {
                                          dragupoffset = Offset.zero;
                                          dragIndex = index;
                                        });
                                      },
                                      onDragUpdate: (up) {
                                        setState(() {
                                          dragupoffset += up.delta;
                                        });
                                      },
                                      onDragEnd: (_) {
                                        setState(() {
                                          dragupoffset = Offset.zero;
                                          dragIndex = -1;
                                        });
                                      },
                                      childWhenDragging: Container(
                                        width: vertexradius.toDouble(),
                                        height: vertexradius.toDouble(),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        child: CustomPaint(
                                          painter: DragLinePainter(
                                            movedOffset: dragupoffset,
                                            linecolor: getPlayerColor(
                                                    GameClient.of(context)!
                                                        .playerId)
                                                .withOpacity(0.5),
                                            lineWidth: 30,
                                          ),
                                          child: Container(
                                            width: vertexradius.toDouble(),
                                            height: vertexradius.toDouble(),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                      ),
                                      feedback: Container(
                                        width: vertexradius.toDouble(),
                                        height: vertexradius.toDouble(),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      child: DragTarget<int>(
                                        onAccept: (comingIndex) {
                                          var ci = comingIndex ~/
                                              (widget.data.width + 1);
                                          var cj = comingIndex %
                                              (widget.data.width + 1);
                                          if (ci == i) {
                                            print(
                                                'currentIndex $index $comingIndex');
                                            if (cj - j == 1) {
                                              callMove(widget.data
                                                      .horizontalEdges.length +
                                                  index +
                                                  1 -
                                                  i);
                                            } else if (j - cj == 1) {
                                              callMove(widget.data
                                                      .horizontalEdges.length +
                                                  comingIndex +
                                                  1 -
                                                  i);
                                            }
                                          } else if (cj == j) {
                                            if (ci - i == 1) {
                                              callMove(index + 1);
                                            } else if (i - ci == 1) {
                                              callMove(comingIndex + 1);
                                            }
                                          }
                                        },
                                        builder: (context, accept, reject) {
                                          bool canAccept = false;
                                          var ci = dragIndex ~/
                                              (widget.data.width + 1);
                                          var cj = dragIndex %
                                              (widget.data.width + 1);
                                          var edgeId = 0;
                                          if (ci == i) {
                                            if (cj - j == 1) {
                                              edgeId = widget.data
                                                      .horizontalEdges.length +
                                                  index +
                                                  1 -
                                                  i;
                                              canAccept = true;
                                            } else if (j - cj == 1) {
                                              edgeId = widget.data
                                                      .horizontalEdges.length +
                                                  dragIndex +
                                                  1 -
                                                  i;
                                              canAccept = true;
                                            }
                                          } else if (cj == j) {
                                            if (ci - i == 1) {
                                              edgeId = index + 1;
                                              canAccept = true;
                                            } else if (i - ci == 1) {
                                              edgeId = dragIndex + 1;
                                              canAccept = true;
                                            }
                                          }
                                          if (dragIndex < 0) {
                                            canAccept = false;
                                          } else if (isEdgeOccupied(edgeId)) {
                                            canAccept = false;
                                          }
                                          return Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              Container(
                                                width: vertexradius.toDouble(),
                                                height: vertexradius.toDouble(),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              if (canAccept)
                                                Positioned.fill(
                                                  left: -10,
                                                  right: -10,
                                                  top: -10,
                                                  bottom: -10,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      border: Border.all(
                                                        width: 2,
                                                        color: getPlayerColor(
                                                            GameClient.of(
                                                                    context)!
                                                                .playerId),
                                                      ),
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          );
                                        },
                                      ),
                                    );
                                  })
                                ],
                              );
                            })
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DragLinePainter extends CustomPainter {
  final Offset movedOffset;
  final Color linecolor;
  final int lineWidth;
  DragLinePainter(
      {required this.movedOffset,
      required this.lineWidth,
      required this.linecolor});
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = linecolor
      ..strokeWidth = lineWidth.toDouble();
    canvas.drawLine(
      Offset.zero.translate(size.width / 2, size.height / 2),
      movedOffset.translate(size.width / 2, size.height / 2),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // return true;
    if (oldDelegate is DragLinePainter) {
      return movedOffset != oldDelegate.movedOffset;
    } else {
      return true;
    }
  }
}
