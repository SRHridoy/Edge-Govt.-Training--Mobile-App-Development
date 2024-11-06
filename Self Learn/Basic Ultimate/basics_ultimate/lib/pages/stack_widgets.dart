// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class StackWidgets extends StatelessWidget {
  const StackWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          //big box
          Container(
            height: 300,
            width: 300,
            color: Colors.deepPurple,
          ),
          //medium box
          Container(
            height: 200,
            width: 200,
            color: Colors.deepPurple[400],
          ),
          //small box
          Container(
            height: 100,
            width: 100,
            color: Colors.deepPurple[200],
          )
        ],
      ),
    );
  }
}
