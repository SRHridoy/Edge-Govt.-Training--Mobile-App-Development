// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NavigationRoutes extends StatelessWidget {
  const NavigationRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          heightFactor: 2,
          alignment: Alignment.center,
          child: Text(
            'Useful Widgets Home!',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.deepOrange,
        toolbarHeight: 80,
        elevation: 4,
        shadowColor: Colors.blueGrey,
      ),
      
      //body:
    );
  }
}
