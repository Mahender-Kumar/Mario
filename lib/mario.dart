import 'package:flutter/material.dart';

class Mario extends StatelessWidget {
  final dynamic direction;
  final dynamic midrun;
  final  dynamic size;

  const Mario({super.key, this.direction, this.midrun, this.size});

  @override
  Widget build(BuildContext context) {
    return direction == 'right'
        ? SizedBox(
            width: size,
            height: size,
            child: midrun
                ? Image.asset('assets/images/mario_standing.png')
                : Image.asset('assets/images/mario_running.png'),
          )
        : Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(3.14),
            child: SizedBox(
              width: size,
              height: size,
              child: midrun
                  ? Image.asset('assets/images/mario_standing.png')
                  : Image.asset('assets/images/mario_running.png'),
            ),
          );
  }
}
