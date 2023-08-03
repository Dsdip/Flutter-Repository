import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  var A = GameState.empty;

  var B = GameState.empty;

  var C = GameState.empty;

  var D = GameState.empty;

  var E = GameState.empty;

  var F = GameState.empty;

  var G = GameState.empty;

  var H = GameState.empty;

  var I = GameState.empty;

  bool isCrossTurn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Container(
            height: 400,
            width: 400,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      if (A == GameState.empty) {
                        if (isCrossTurn) {
                          A = GameState.cross;
                        } else {
                          A = GameState.circle;
                        }
                        isCrossTurn = !isCrossTurn;
                      }
                    });
                  },
                  child: Container(
                    color: Colors.red,
                    child: A == GameState.cross
                        ? const Icon(
                            Icons.close,
                            size: 100,
                          )
                        : A == GameState.circle
                            ? const Icon(
                                Icons.circle,
                                size: 100,
                              )
                            : Container(),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (B == GameState.empty) {
                        if (isCrossTurn) {
                          B = GameState.cross;
                        } else {
                          B = GameState.circle;
                        }
                        isCrossTurn = !isCrossTurn;
                      }
                    });
                  },
                  child: Container(
                    color: Colors.yellow,
                    child: B == GameState.cross
                        ? const Icon(
                            Icons.close,
                            size: 100,
                          )
                        : B == GameState.circle
                            ? const Icon(
                                Icons.circle,
                                size: 100,
                              )
                            : Container(),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (C == GameState.empty) {
                        if (isCrossTurn) {
                          C = GameState.cross;
                        } else {
                          C = GameState.circle;
                        }
                        isCrossTurn = !isCrossTurn;
                      }
                    });
                  },
                  child: Container(
                    color: Colors.blue,
                    child: C == GameState.cross
                        ? const Icon(
                            Icons.close,
                            size: 100,
                          )
                        : C == GameState.circle
                            ? const Icon(
                                Icons.circle,
                                size: 100,
                              )
                            : Container(),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (D == GameState.empty) {
                        if (isCrossTurn) {
                          D = GameState.cross;
                        } else {
                          D = GameState.circle;
                        }
                        isCrossTurn = !isCrossTurn;
                      }
                    });
                  },
                  child: Container(
                    color: Colors.amber,
                    child: D == GameState.cross
                        ? const Icon(
                            Icons.close,
                            size: 100,
                          )
                        : D == GameState.circle
                            ? const Icon(
                                Icons.circle,
                                size: 100,
                              )
                            : Container(),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (E == GameState.empty) {
                        if (isCrossTurn) {
                          E = GameState.cross;
                        } else {
                          E = GameState.circle;
                        }
                        isCrossTurn = !isCrossTurn;
                      }
                    });
                  },
                  child: Container(
                    color: Colors.white,
                    child: E == GameState.cross
                        ? const Icon(
                            Icons.close,
                            size: 100,
                          )
                        : E == GameState.circle
                            ? const Icon(
                                Icons.circle,
                                size: 100,
                              )
                            : Container(),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (F == GameState.empty) {
                        if (isCrossTurn) {
                          F = GameState.cross;
                        } else {
                          F = GameState.circle;
                        }
                        isCrossTurn = !isCrossTurn;
                      }
                    });
                  },
                  child: Container(
                    color: Colors.teal,
                    child: F == GameState.cross
                        ? const Icon(
                            Icons.close,
                            size: 100,
                          )
                        : F == GameState.circle
                            ? const Icon(
                                Icons.circle,
                                size: 100,
                              )
                            : Container(),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (G == GameState.empty) {
                        if (isCrossTurn) {
                          G = GameState.cross;
                        } else {
                          G = GameState.circle;
                        }
                        isCrossTurn = !isCrossTurn;
                      }
                    });
                  },
                  child: Container(
                    color: Colors.green,
                    child: G == GameState.cross
                        ? const Icon(
                            Icons.close,
                            size: 100,
                          )
                        : G == GameState.circle
                            ? const Icon(
                                Icons.circle,
                                size: 100,
                              )
                            : Container(),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (H == GameState.empty) {
                        if (isCrossTurn) {
                          H = GameState.cross;
                        } else {
                          H = GameState.circle;
                        }
                        isCrossTurn = !isCrossTurn;
                      }
                    });
                  },
                  child: Container(
                    color: Colors.purple,
                    child: H == GameState.cross
                        ? const Icon(
                            Icons.close,
                            size: 100,
                          )
                        : H == GameState.circle
                            ? const Icon(
                                Icons.circle,
                                size: 100,
                              )
                            : Container(),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (I == GameState.empty) {
                        if (isCrossTurn) {
                          I = GameState.cross;
                        } else {
                          I = GameState.circle;
                        }
                        isCrossTurn = !isCrossTurn;
                      }
                    });
                  },
                  child: Container(
                    color: Colors.pink,
                    child: I == GameState.cross
                        ? const Icon(
                            Icons.close,
                            size: 100,
                          )
                        : I == GameState.circle
                            ? const Icon(
                                Icons.circle,
                                size: 100,
                              )
                            : Container(),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

enum GameState {
  circle,
  cross,
  empty,
}
