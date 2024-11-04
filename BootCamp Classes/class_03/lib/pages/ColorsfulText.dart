// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ColorsfulText extends StatelessWidget {
  const ColorsfulText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Colorful Text",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Text(
          "I am a Colorful Text!",
          style: TextStyle(
              fontSize: 40,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              foreground: Paint()
                ..shader = LinearGradient(
                    colors:<Color>[
                      Colors.red,
                      Colors.deepOrange,
                      Colors.green,
                    ],

                ).createShader(Rect.fromLTWH(0,0,0.0, 200.0,)),
              // background:Image(image: ),
              // background: Image(image: 'asset/img/bg_text.png'),
          ),
        ),
      ),
    );
  }
}
