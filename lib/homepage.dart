import 'package:flutter/material.dart';
import 'package:mario/button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                color: Colors.brown,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    MyButton(
                        child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
                    MyButton(
                      child: Icon(Icons.arrow_upward,
                      color: Colors.white,
                      ),
                    ),
                    MyButton(child:   Icon(Icons.arrow_forward,
                      color: Colors.white,
                    )),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
