import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_view_class/list_view_custom.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewCustom(),
    );
  }
}
