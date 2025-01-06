import 'package:dictionary_app/pages/dictionary_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DictionaryApp());
}

class DictionaryApp extends StatelessWidget {
  const DictionaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DictionaryScreen(),
    );
  }
}
