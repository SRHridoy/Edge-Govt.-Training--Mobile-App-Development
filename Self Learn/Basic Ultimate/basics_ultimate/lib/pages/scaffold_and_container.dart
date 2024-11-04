// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ScaffoldWidgets extends StatelessWidget {
  const ScaffoldWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      appBar: AppBar(
        title: Text(
          "All About Container!",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange[800],
        toolbarHeight: 80,
      ),
      body: Column(
        children: [
          Container(
            //margin: EdgeInsets.only(top: 50,left:30,),
            //margin: EdgeInsets.all(50),
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
            //Alignment dilei pera , full height and width nibe...
            //alignment: Alignment.center, //Controls the child elements alignment relative to container
            width: double.infinity,
            // padding: EdgeInsets.symmetric(horizontal: 25,vertical: 40),
            // padding: EdgeInsets.all(50),
            //padding: EdgeInsets.only(top: 50,bottom: 20,left: 20,right: 40),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              'Unknown relative!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(20, 50, 20, 0),

            width: double.infinity,

            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              'Unknown relative!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(20, 50, 20, 0),

            width: double.infinity,

            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              'Unknown relative!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(20, 50, 20, 0),

            width: double.infinity,

            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              'Unknown relative!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(20, 50, 20, 0),

            width: double.infinity,

            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              'Unknown relative!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),

        ],
      ),
    );
  }
}
