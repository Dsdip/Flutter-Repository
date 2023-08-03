import 'package:flutter/material.dart';

class Newgame extends StatefulWidget {
  Newgame({super.key});

  @override
  State<Newgame> createState() => _NewgameState();
}

class _NewgameState extends State<Newgame> {
  GameState A = GameState.empty;

  GameState B = GameState.empty;

  GameState C = GameState.empty;

  GameState D = GameState.empty;

  GameState E = GameState.empty;

  GameState F = GameState.empty;

  GameState G = GameState.empty;

  GameState H = GameState.empty;

  GameState I = GameState.empty;

  bool isCrossTurn = true;

  BoxState boxState = BoxState.Continue;

  int boxfill = 0;

  void GameReset() {
    setState(() {
      A = GameState.empty;

      B = GameState.empty;

      C = GameState.empty;

      D = GameState.empty;

      E = GameState.empty;

      F = GameState.empty;

      G = GameState.empty;

      H = GameState.empty;

      I = GameState.empty;

      boxState = BoxState.Continue;

      boxfill = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Game:Tic Tac Tue",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: Text(
                    "Turn:${isCrossTurn ? "Cross" : "Circle"}",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: GridView(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
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
                            boxfill += 1;
                            Gamelogic();
                          }
                        });
                      },
                      child: Container(
                        color: Colors.blue,
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
                            boxfill += 1;
                            Gamelogic();
                          }
                        });
                      },
                      child: Container(
                        color: Colors.red,
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
                            boxfill += 1;
                            Gamelogic();
                          }
                        });
                      },
                      child: Container(
                        color: Colors.yellow,
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
                            boxfill += 1;
                            Gamelogic();
                          }
                        });
                      },
                      child: Container(
                        color: Colors.green,
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
                            boxfill += 1;
                            Gamelogic();
                          }
                        });
                      },
                      child: Container(
                        color: Colors.teal,
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
                            boxfill += 1;
                            Gamelogic();
                          }
                        });
                      },
                      child: Container(
                        color: Colors.pink,
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
                            boxfill += 1;
                            Gamelogic();
                          }
                        });
                      },
                      child: Container(
                        color: Colors.purple,
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
                            boxfill += 1;
                            Gamelogic();
                          }
                        });
                      },
                      child: Container(
                        color: Colors.amber,
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
                            boxfill += 1;
                            Gamelogic();
                          }
                        });
                      },
                      child: Container(
                        color: Colors.blue,
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
              )
            ],
          ),
          boxState != BoxState.Continue
              ? Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.white.withOpacity(0.8),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          boxState != BoxState.matchdaw
                              ? boxState == BoxState.circlewin
                                  ? 'Circle Wins'
                                  : 'Cross Wins'
                              : "Match draw",
                          style: const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            GameReset();
                          },
                          child: const Text("Game Restart"),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }

  void Gamelogic() {
    if (A == B && A == C && A != GameState.empty) {
      if (A == GameState.circle) {
        boxState = BoxState.circlewin;
      } else {
        boxState = BoxState.crosswin;
      }
    }
    if (D == E && D == F && D != GameState.empty) {
      if (D == GameState.circle) {
        boxState = BoxState.circlewin;
      } else {
        boxState = BoxState.crosswin;
      }
    }
    if (G == H && G == I && G != GameState.empty) {
      if (G == GameState.circle) {
        boxState = BoxState.circlewin;
      } else {
        boxState = BoxState.crosswin;
      }
    }
    if (A == D && A == G && A != GameState.empty) {
      if (A == GameState.circle) {
        boxState = BoxState.circlewin;
      } else {
        boxState = BoxState.crosswin;
      }
    }
    if (B == E && B == H && B != GameState.empty) {
      if (B == GameState.circle) {
        boxState = BoxState.circlewin;
      } else {
        boxState = BoxState.crosswin;
      }
    }
    if (C == F && C == I && C != GameState.empty) {
      if (C == GameState.circle) {
        boxState = BoxState.circlewin;
      } else {
        boxState = BoxState.crosswin;
      }
    }
    if (A == E && A == I && A != GameState.empty) {
      if (A == GameState.circle) {
        boxState = BoxState.circlewin;
      } else {
        boxState = BoxState.crosswin;
      }
    }
    if (C == E && C == G && C != GameState.empty) {
      if (C == GameState.circle) {
        boxState = BoxState.circlewin;
      } else {
        boxState = BoxState.crosswin;
      }
    }
    if (boxfill == 9) boxState = BoxState.matchdaw;
  }
}

enum GameState {
  circle,
  cross,
  empty,
}

enum BoxState {
  circlewin,
  crosswin,
  Continue,
  matchdaw,
}
