import 'package:class_03/pages/ButtonWidget.dart';
import 'package:class_03/pages/ColorsfulText.dart';
import 'package:class_03/pages/ImageWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Buttonwidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}
