import 'package:flutter/material.dart';

class JumpingMario extends StatefulWidget {
  const JumpingMario({super.key});

  @override
  State<JumpingMario> createState() => _JumpingMarioState();
}

class _JumpingMarioState extends State<JumpingMario> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 50,
        height: 50,
        child: Image.asset('assets/images/mario_running.png'));
  }
}
