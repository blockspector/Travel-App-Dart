// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Emojis extends StatelessWidget {
  final String emojis;
  const Emojis({
    Key? key,
    required this.emojis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 252, 255, 169),
          borderRadius: BorderRadius.circular(16)),
      padding: EdgeInsets.all(20),
      child: Center(
          child: Text(
        emojis,
        style: TextStyle(
          fontSize: 50,
        ),
      )),
    );
  }
}
