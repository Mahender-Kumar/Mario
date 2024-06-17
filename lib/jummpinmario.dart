import 'package:flutter/material.dart';

class JumpingMario extends StatelessWidget {
  final direction;
  const JumpingMario({super.key, this.direction});

  @override
  Widget build(BuildContext context) {
    return direction == 'right'
        ? Container(
            width: 50,
            height: 50,
            child: Image.asset('assets/images/mario_running.png'))
        : Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(3.14),
            child: Container(
                width: 50,
                height: 50,
                child: Image.asset('assets/images/mario_running.png')),
          );
  }
}
