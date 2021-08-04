import 'dart:math';

import 'package:flutter/material.dart';

class BoardBuilder extends StatefulWidget {
  final int boardSize;

  const BoardBuilder({
    required this.boardSize,
    Key? key,
  }) : super(key: key);

  @override
  _BoardBuilderState createState() => _BoardBuilderState();
}

class _BoardBuilderState extends State<BoardBuilder> {
  late List<int> cellValues;

  @override
  void initState() {
    cellValues =
        List.filled(widget.boardSize * widget.boardSize, 0, growable: false);
    super.initState();
  }

  bool get isComplete => !cellValues.any((element) => element == 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  width: 1000,
                  // height: 1000,
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: widget.boardSize,
                    childAspectRatio: 1,
                    children: [
                      ...List.generate(cellValues.length, (index) => index).map(
                        (index) {
                          var e = cellValues[index];

                          return InkWell(
                            onTap: () {
                              if (cellValues[index] == 0) {
                                setState(() {
                                  cellValues[index] =
                                      cellValues.reduce(max) + 1;
                                });
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Center(
                                  child: Text(
                                    e > 0 ? e.toString() : " ",
                                    style: TextStyle(fontSize: 48),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              margin: EdgeInsets.all(10),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              IconButton(onPressed: refresh, icon: Icon(Icons.refresh)),
              IconButton(onPressed: shuffle, icon: Icon(Icons.shuffle)),
              IconButton(
                onPressed: isComplete ? submit : null,
                icon: Icon(Icons.check),
              ),
            ],
          )
        ],
      ),
    );
  }

  refresh() {
    for (int i = 0; i < cellValues.length; i++) {
      cellValues[i] = 0;
    }
    setState(() {});
  }

  shuffle() {
    for (int i = 0; i < cellValues.length; i++) {
      cellValues[i] = i + 1;
    }
    cellValues.shuffle();
    setState(() {});
  }

  submit() {}
}
