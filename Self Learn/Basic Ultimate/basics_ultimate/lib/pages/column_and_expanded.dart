// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ColumnAndExpandedWidgets extends StatelessWidget {
  const ColumnAndExpandedWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('All About Columns and Expanded Widgets',style: TextStyle(color: Colors.white),),centerTitle: true,backgroundColor: Colors.pinkAccent,toolbarHeight: 90,),

      body: Column(
       // mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              // height: 300,
              // width: 300,
             // height: 200,
             // width: 200,
              color: Colors.green,
            ),
          ),Expanded(
            flex: 2,
            child: Container(
              //height: 200,
              //width: 200,
              color: Colors.red,
            ),
          ),
          
          Expanded(
            flex: 2,
            child: Container(
              // height: 100,
              // width: 100,
              //height: 200,
              //width: 200,
              color: Colors.yellow,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              // height: 100,
              // width: 100,
              //height: 200,
              //width: 200,
              color: Colors.purpleAccent,
            ),
          ),
        ],
      ),
    );
  }
}
