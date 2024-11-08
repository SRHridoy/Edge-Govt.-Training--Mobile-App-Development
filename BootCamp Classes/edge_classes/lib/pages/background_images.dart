// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BackgroundImages extends StatelessWidget {
  const BackgroundImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Background Image',style: TextStyle(color: Colors.white),),backgroundColor: Colors.pink,),
      
      // body: DecoratedBox(decoration: BoxDecoration(
      //   image: DecorationImage(image: AssetImage('assets/images/bg_img.jpg'),fit: BoxFit.scaleDown),
      // ),child: Center(child: FlutterLogo(
      //   size: 200,
      // ),),),

    );
  }
}
