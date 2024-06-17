import 'package:flutter/material.dart';

class JumpingMario extends StatelessWidget {
  final size;
  final direction;
  const JumpingMario({super.key, this.direction, this.size});

  @override
  Widget build(BuildContext context) {
    return direction == 'right'
        ? Container(
          width: size,
            height: size,
            child: Image.asset('assets/images/mario_running.png'))
        : Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(3.14),
            child: Container(
                width: size,
            height: size,
                child: Image.asset('assets/images/mario_running.png')),
          );
  }
}
