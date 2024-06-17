import 'package:flutter/material.dart';

class Mario extends StatelessWidget {
  final direction;
  final midrun;
  final size;

  const Mario({super.key, this.direction, this.midrun, this.size});

  @override
  Widget build(BuildContext context) {
    return direction == 'right'
        ? Container(
            width: size,
            height: size,
            child: midrun
                ? Image.asset('assets/images/mario_standing.png')
                : Image.asset('assets/images/mario_running.png'),
          )
        : Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(3.14),
            child: Container(
              width: size,
              height: size,
              child: midrun
                  ? Image.asset('assets/images/mario_standing.png')
                  : Image.asset('assets/images/mario_running.png'),
            ),
          );
  }
}
