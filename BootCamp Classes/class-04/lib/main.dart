// ignore_for_file: prefer_const_constructors

import 'package:class_04/pages/image_widgets.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageWidgets(),
    );
  }
}
