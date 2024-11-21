// ignore_for_file: prefer_const_constructors

import 'package:basics_ultimate/pages/appbar_widgets.dart';
import 'package:basics_ultimate/pages/bottom_navigation_bar.dart';
import 'package:basics_ultimate/pages/button_widgets.dart';
import 'package:basics_ultimate/pages/circular_avatar_widgets.dart';
import 'package:basics_ultimate/pages/column_and_expanded.dart';
import 'package:basics_ultimate/pages/lottie_animation.dart';
import 'package:basics_ultimate/pages/tasbih_counter.dart';
import 'package:basics_ultimate/pages/gesture_detector_widgets.dart';
import 'package:basics_ultimate/pages/grid_view_widgets.dart';
import 'package:basics_ultimate/pages/icon_widgets.dart';
import 'package:basics_ultimate/pages/image_button_widgets.dart';
import 'package:basics_ultimate/pages/image_widgets.dart';
import 'package:basics_ultimate/pages/listview_builder_widgets.dart';
import 'package:basics_ultimate/pages/listview_separated_widgets.dart';
import 'package:basics_ultimate/pages/listview_widgets.dart';
import 'package:basics_ultimate/pages/listview_with_listtile.dart';
import 'package:basics_ultimate/pages/navigation_drawer_widgets.dart';
import 'package:basics_ultimate/pages/navigation_routes.dart';
import 'package:basics_ultimate/pages/scaffold_and_container.dart';
import 'package:basics_ultimate/pages/stack_widgets.dart';
import 'package:basics_ultimate/pages/text_field_widget.dart';
import 'package:flutter/material.dart';

void main() {
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
      //home: ListviewBuilderWidgets(),
      //home: ListviewSeparatedWidgets(),
      //home: CircularAvatarWidgets(),
      //home: ListviewWithListTile(),
      //home: GridViewWidgets(),
      //home: StackWidgets(),
      //home:ButtonWidgets(),
      //home:ImageButton(),
      //home:ImageWidgets(),
      //home: GestureDetectorWidgets(),
      //home: NavigationRoutes(),
      //home: NavigationDrawerWidgets(),
      //home: BottomNavigationBarWidgets(),
      //home : TasbihCounter(), //work later
      //home: TextFieldWidget(),
      home:LottieAnimation(),
      routes: {
        '/navigation_routes': (context) => NavigationRoutes(),
        '/image_button_widgets': (context) => ImageButton(),
        '/listview_with_listtile': (context) => ListviewWithListTile(),
      },
    );
  }
}
