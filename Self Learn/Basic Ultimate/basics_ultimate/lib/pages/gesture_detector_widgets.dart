// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GestureDetectorWidgets extends StatelessWidget {
  const GestureDetectorWidgets({super.key});

  //functions & methods
  void userTapped(){
    print("User Tapped!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: userTapped,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.pink,
            child: Center(child: Text('Tap me')),
          
          ),
        ),
      ),
    );
  }
}
