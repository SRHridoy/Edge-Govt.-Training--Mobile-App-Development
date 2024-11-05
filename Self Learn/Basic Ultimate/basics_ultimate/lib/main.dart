// ignore_for_file: prefer_const_constructors

import 'package:basics_ultimate/pages/appbar_widgets.dart';
import 'package:basics_ultimate/pages/button_widgets.dart';
import 'package:basics_ultimate/pages/column_and_expanded.dart';
import 'package:basics_ultimate/pages/icon_widgets.dart';
import 'package:basics_ultimate/pages/image_widgets.dart';
import 'package:basics_ultimate/pages/listview_widgets.dart';
import 'package:basics_ultimate/pages/scaffold_and_container.dart';
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
      //home: ScaffoldWidgets(),
      //home: IconWidgets(),
      //home: AppbarWidgets(),
      //home: ColumnAndExpandedWidgets(),
      //home: ListviewWidgets(),
      //home:ButtonWidgets(),
      home:ImageWidgets(),
    );
  }
}
