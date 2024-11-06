// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ImageWidgets extends StatelessWidget {
  const ImageWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'All About Images',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
              child: Image.asset(
        'assets/images/child_boy.jpg',
        width: 250,
        height: 250,
        fit: BoxFit.cover,
      ))),
    );
  }
}
