// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  const Options({super.key});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ছোটদের মজার আসর'),centerTitle: true,),
      body: Stack(
        children: [
          Image(image: AssetImage('images/bg_1.jpg'),width: MediaQuery.sizeOf(context).width,height: MediaQuery.sizeOf(context).height,fit: BoxFit.cover,),
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: GestureDetector(
                      onTap: () {
                          Navigator.pushNamed(context, '/poetry');
                      },
                      child: Center(
                        child: Container(
                          height: 70,
                          width: 250,
                          decoration: BoxDecoration(color: Colors.purpleAccent,borderRadius: BorderRadius.circular(20),backgroundBlendMode: BlendMode.overlay,
                          border: Border.all(width:2),
                          ),
                          child: Center(child: Text('ছোটদের মজার ছড়া',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/stories');
                    },
                    child: Center(
                      child: Container(
                        height: 70,
                        width: 250,
                        decoration: BoxDecoration(color: Colors.green,
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(20),
                          backgroundBlendMode: BlendMode.overlay
                        ),
                        child: Center(child: Text('ছোটদের জন্যে শিক্ষনীয় গল্প',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                      ),
                    ),
                  ),

                ]
            ),
          ),
        ],
      )
    );
  }
}
