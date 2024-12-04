// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:routing/pages/about_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome to EDGE Training Program',style: TextStyle(color: Colors.white),),centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(image:AssetImage('edge.png'))),
              child: Text(''),
              ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('EDGE works on creating the enabling environment for digital government and the digital economy',style: TextStyle(fontSize: 25,),textAlign: TextAlign.center,),
              ),
            ),
            
            Center(child: Container(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                child: Center(child: Image(image: AssetImage('hero_img.png'))))),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage(),));
                }, child: Text('About EDGE'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(30),),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
