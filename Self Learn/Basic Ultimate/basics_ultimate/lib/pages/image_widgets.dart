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
      body: Image.asset('assets/images/child_bou_2.jpg'),
      
    );
  }
}
