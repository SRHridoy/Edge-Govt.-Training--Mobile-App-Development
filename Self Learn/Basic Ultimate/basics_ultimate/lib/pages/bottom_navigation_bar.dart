// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:basics_ultimate/pages/bottom_nav/home.dart';
import 'package:basics_ultimate/pages/bottom_nav/profile.dart';
import 'package:basics_ultimate/pages/bottom_nav/settings.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWidgets extends StatefulWidget {
  BottomNavigationBarWidgets({super.key});

  @override
  State<BottomNavigationBarWidgets> createState() => _BottomNavigationBarWidgetsState();
}

class _BottomNavigationBarWidgetsState extends State<BottomNavigationBarWidgets> {
  //Tracking selected page:
  int _selectedIndex = 0;

  //Method to update the selected page:
  void _navigateBottomBar(int newIndex){
    setState(() {
      _selectedIndex = newIndex;
    });
  }

//List of pages of bottom nav:
  final List _bottom_nav_pages = [
    //homepage
    Home(),
    //profile page
    Profile(),
    //settings page
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Bottom Navigation',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        fixedColor: Colors.blue,
        //selectedIconTheme: IconThemeData(color: Colors.blue),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        //backgroundColor: Colors.deepOrangeAccent[200],
        items: [
          //Home
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
          //Profile
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          //Settings
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ],
      ),

      body: _bottom_nav_pages[_selectedIndex],
    );
  }
}
