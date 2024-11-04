// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ListviewWidgets extends StatelessWidget {
  const ListviewWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'All About ListView',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        children: [
          Container(
            height: 150,
            color: Colors.green,
          ),
          Container(
            height: 150,
            color: Colors.red,
          ),
          SizedBox(
            height: 150,
            //color: Colors.white,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 150,
                  color: Colors.blueAccent,
                ),
                Container(
                  width: 150,
                  color: Colors.deepPurple,
                ),
                Container(
                  width: 150,
                  color: Colors.teal,
                ),
                Container(
                  width: 150,
                  color: Colors.pinkAccent,
                ),
                Container(
                  width: 150,
                  color: Colors.deepOrange,
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            color: Colors.yellow,
          ),
          Container(
            height: 150,
            color: Colors.white,
          ),
          Container(
            height: 150,
            color: Colors.pink,
          ),
          Container(
            height: 150,
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}
