import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mario/button.dart';
import 'package:mario/jummpinmario.dart';
import 'package:mario/mario.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double marioX = 0;
  static double marioY = 1;
  double time = 0;
  double height = 0;
  double initialHeight = marioY;
  String direction = 'right';
  bool midrun = false;
  bool midjump = false;
  void preJump() {
    time = 0;
    initialHeight = marioY;
  }

  void jump() {
    preJump();
    midjump = true;
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      time += 0.05;
      height = -4.9 * time * time + 5 * time;

      if (initialHeight - height > 1) {
        midjump = false;
        setState(() {
          marioY = 1;
        });
        timer.cancel();
      } else {
        setState(() {
          marioY = initialHeight - height;
        });
      }
    });
  }

  void moveRight() {
    direction = 'right';
    midrun = !midrun;

    setState(() {
      marioX += 0.02;
    });
  }

  void moveLeft() {
    direction = 'left';
    midrun = !midrun;

    setState(() {
      marioX -= 0.02;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.blue,
              child: AnimatedContainer(
                alignment: Alignment(marioX, marioY),
                duration: const Duration(microseconds: 0),
                child: midjump
                    ? JumpingMario()
                    : Mario(
                        direction: direction,
                        midrun: midrun,
                      ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                color: Colors.brown,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // ElevatedButton(
                    //     onPressed: () {
                    //       jump();
                    //     },
                    //     child: Icon(Icons.abc)),

                    MyButton(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      function: moveLeft,
                    ),
                    MyButton(
                      child: Icon(
                        Icons.arrow_upward,
                        color: Colors.white,
                      ),
                      function: jump,
                    ),
                    MyButton(
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      function: moveRight,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
