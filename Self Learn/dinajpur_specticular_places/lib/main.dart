import 'package:dinajpur_spectacular_places/pages/home_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DinajpurSpectacularPlacesApp());
}

class DinajpurSpectacularPlacesApp extends StatelessWidget {
  const DinajpurSpectacularPlacesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
