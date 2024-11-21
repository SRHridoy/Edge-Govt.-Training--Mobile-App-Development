// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  Color colors;

  MyButton({super.key, required this.text,required this.colors, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: MaterialButton(
        onPressed: onPressed,
        color: colors,
        padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
        child: Text(text),
      ),
    );
  }
}
