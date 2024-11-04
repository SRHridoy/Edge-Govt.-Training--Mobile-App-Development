// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Buttonwidget extends StatelessWidget {
  const Buttonwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text(
          "Button",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo[700],
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text("There are Various Colorful Buttons :",style: TextStyle(fontSize: 30,color: Colors.white,letterSpacing: 5),),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.only(left: 300,right: 300,top: 20,bottom: 20),
                    elevation: 50,
                    shadowColor: Colors.black,
                  ),
                  onPressed: () {
        
                  },
                  child: Text(
                    "Button",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ), Container(
        
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.only(left: 300,right: 300,top: 20,bottom: 20),
                    elevation: 50,
                    shadowColor: Colors.black,
                  ),
                  onPressed: () {
        
                  },
                  child: Text(
                    "Button",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),Container(
        
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.only(left: 300,right: 300,top: 20,bottom: 20),
                    elevation: 50,
                    shadowColor: Colors.black,
                  ),
                  onPressed: () {
        
                  },
                  child: Text(
                    "Button",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),Container(
        
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    padding: EdgeInsets.only(left: 300,right: 300,top: 20,bottom: 20),
                    elevation: 50,
                    shadowColor: Colors.black,
                  ),
                  onPressed: () {
        
                  },
                  child: Text(
                    "Button",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),Container(
        
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent,
                    padding: EdgeInsets.only(left: 300,right: 300,top: 20,bottom: 20),
                    elevation: 50,
                    shadowColor: Colors.black,
                  ),
                  onPressed: () {
        
                  },
                  child: Text(
                    "Button",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
