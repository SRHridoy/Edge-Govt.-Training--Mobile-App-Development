// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ButtonWidgets extends StatefulWidget {
  const ButtonWidgets({super.key});

  @override
  State<ButtonWidgets> createState() => _ButtonWidgetsState();
}

class _ButtonWidgetsState extends State<ButtonWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text(
          'All About Buttons',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
                padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                textStyle: TextStyle(fontSize: 20),
              ),
              onPressed: () {}, child: Text('TextButton'),),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.yellow,
                backgroundColor: Colors.red,
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                textStyle: TextStyle(fontSize: 20),
              ),
              onPressed: (){}, child: Text('ElevatedButton'),),
            SizedBox(height: 20,),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
                  textStyle: TextStyle(fontSize: 20),
                ),
                onPressed: (){}, child: Text('OutlinedButton'))
          ],
        
        ),
      ),
    );
  }
}
