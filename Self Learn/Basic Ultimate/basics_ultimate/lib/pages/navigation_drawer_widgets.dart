// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NavigationDrawerWidgets extends StatelessWidget {
  const NavigationDrawerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Navigation Drawer',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,

        //For changing the drawer icon color:
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            //drawer header her
            DrawerHeader(
              child: Icon(
                Icons.account_balance_outlined,
                size: 50,
                color: Colors.pink,
              ),
            ),

            //home page list tile
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.pink,
              ),
              title: Text(
                'HOME',
                style: TextStyle(color: Colors.pinkAccent),
              ),

              onTap: () {
                //go to home :
                Navigator.pop(context);//For closing before going ...
                Navigator.pushNamed(context, '/navigation_routes');
              },
            ),
            //Image Button page list tile
            ListTile(
              leading: Icon(Icons.settings, color: Colors.pink),
              title: Text('IMAGE BUTTON',
                  style: TextStyle(color: Colors.pinkAccent)),

              onTap: () {
                //Go to image button page
                Navigator.pop(context);//For closing before going ...
                Navigator.pushNamed(context, '/image_button_widgets');
              },
            ),
            //about page list tile
            ListTile(
              leading: Icon(Icons.logout, color: Colors.pink),
              title: Text('LISTVIEW WITH LIST_TILE',
                  style: TextStyle(color: Colors.pinkAccent)),

              onTap: () {
                //go to listview with list-tile page:
                Navigator.pop(context);//For closing before going ...
                Navigator.pushNamed(context, '/listview_with_listtile');
              },
            )
          ],
        ),
      ),
    );
  }
}
