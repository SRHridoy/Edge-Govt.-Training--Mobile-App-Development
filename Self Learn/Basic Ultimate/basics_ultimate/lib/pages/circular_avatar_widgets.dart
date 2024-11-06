// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CircularAvatarWidgets extends StatelessWidget {
  const CircularAvatarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Circle Avatar Widgets',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/student_boy.png'),
                  backgroundColor: Colors.deepOrange),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 100,
              height: 100,
              child: CircleAvatar(
                backgroundColor: Colors.deepOrange,
                child: Text(
                  'Student',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
