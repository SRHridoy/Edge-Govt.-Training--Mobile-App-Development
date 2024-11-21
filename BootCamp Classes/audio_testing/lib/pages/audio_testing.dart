// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AudioTesting extends StatefulWidget {
  const AudioTesting({super.key});

  @override
  State<AudioTesting> createState() => _AudioTestingState();
}

class _AudioTestingState extends State<AudioTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Audio Testing',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('doraemon_nobita.jpg'),fit: BoxFit.cover)),
            ),
          ),
        ],
      ),
    );
  }
}
