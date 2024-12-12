// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:video_from_youtube/pages/options.dart';
import 'package:video_from_youtube/pages/poetry.dart';
import 'package:video_from_youtube/pages/stories.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Options(),
      routes: {
        '/poetry':(context) => Poetry(),
        '/stories':(context) => Stories(),
      },
    );
  }
}
