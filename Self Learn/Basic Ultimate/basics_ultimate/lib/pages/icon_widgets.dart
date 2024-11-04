// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

class IconWidgets extends StatelessWidget {
  const IconWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text(
          "All About Icons",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,

      ),
      backgroundColor: Colors.lightBlueAccent[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24,
                  semanticLabel: "Love",
                ),
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 30,
                ),
                Icon(
                  Icons.beach_access,
                  color: Colors.blue,
                  size: 36,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  SimpleIcons.github,
                  color: Colors.pink,
                  size: 20,
                ),
                Icon(
                  Icons.facebook_sharp,
                  color: Colors.blue,
                  size: 30,
                ),
                Icon(
                  SimpleIcons.x,
                  size: 20,
                  color: Colors.black,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  SimpleIcons.man,
                  color: Colors.pink,
                  size: 20,
                ),
                Icon(
                  Icons.child_care,
                  color: Colors.blue,
                  size: 30,
                ),
                Icon(
                  SimpleIcons.homeadvisor,
                  size: 20,
                  color: Colors.black,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  SimpleIcons.amazon,
                  color: Colors.pink,
                  size: 20,
                ),
                Icon(
                  SimpleIcons.docker,
                  color: Colors.blue,
                  size: 30,
                ),
                Icon(
                  SimpleIcons.abstracticon,
                  size: 20,
                  color: Colors.black,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  SimpleIcons.lada,
                  color: Colors.pink,
                  size: 20,
                ),
                Icon(
                  SimpleIcons.lamborghini,
                  color: Colors.blue,
                  size: 30,
                ),
                Icon(
                  SimpleIcons.tesla,
                  size: 20,
                  color: Colors.black,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
