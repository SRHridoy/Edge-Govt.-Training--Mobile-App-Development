// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GridViewWidgets extends StatelessWidget {
  const GridViewWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
          itemCount: 80,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemBuilder: (context, index) => Container(
        color: Colors.pink,
        margin: EdgeInsets.all(3),
      ),
    ));
  }
}
