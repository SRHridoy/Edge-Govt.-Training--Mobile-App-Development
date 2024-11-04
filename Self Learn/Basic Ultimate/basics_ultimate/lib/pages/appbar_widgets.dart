// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AppbarWidgets extends StatelessWidget {
  const AppbarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 30,
        ),
        title: Text(
          'AppBar',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pinkAccent,
        elevation: 0,
        leading: Icon(Icons.menu_open_rounded),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
        //Latter in tab:
        // bottom: TabBar(tabs: [
        //   Tab(text: "Home",),
        //   Tab(text: "Services",),
        //   Tab(text: "About",),
        // ]),


      ),
    );
  }
}
