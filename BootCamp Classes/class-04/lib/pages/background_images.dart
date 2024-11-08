// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BackgroundImages extends StatefulWidget {
   BackgroundImages({super.key});

  @override
  State<BackgroundImages> createState() => _BackgroundImagesState();
}

class _BackgroundImagesState extends State<BackgroundImages> {
  var _unTapped = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Background Image',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_com.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _unTapped = !_unTapped;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.pink,
                          blurRadius: 10,
                          spreadRadius: 3,
                          offset: Offset(0, 4),
                        )
                      ],
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/duo.jpg',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 80,
                    child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color:_unTapped?Colors.transparent:Colors.pink,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                           _unTapped? '':'নোবিতা + সুজুকা = ❤️',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        )),
                  ),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _unTapped = !_unTapped;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.pink,
                          blurRadius: 10,
                          spreadRadius: 3,
                          offset: Offset(0, 4),
                        )
                      ],
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/duo.jpg',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 80,
                    child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color:_unTapped?Colors.transparent:Colors.pink,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                           _unTapped? '':'নোবিতা + সুজুকা = ❤️',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        )),
                  ),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _unTapped = !_unTapped;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.pink,
                          blurRadius: 10,
                          spreadRadius: 3,
                          offset: Offset(0, 4),
                        )
                      ],
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/duo.jpg',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 80,
                    child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color:_unTapped?Colors.transparent:Colors.pink,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                           _unTapped? '':'নোবিতা + সুজুকা = ❤️',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        )),
                  ),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _unTapped = !_unTapped;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.pink,
                          blurRadius: 10,
                          spreadRadius: 3,
                          offset: Offset(0, 4),
                        )
                      ],
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/duo.jpg',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 80,
                    child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color:_unTapped?Colors.transparent:Colors.pink,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                           _unTapped? '':'নোবিতা + সুজুকা = ❤️',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        )),
                  ),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _unTapped = !_unTapped;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.pink,
                          blurRadius: 10,
                          spreadRadius: 3,
                          offset: Offset(0, 4),
                        )
                      ],
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/duo.jpg',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 80,
                    child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color:_unTapped?Colors.transparent:Colors.pink,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                           _unTapped? '':'নোবিতা + সুজুকা = ❤️',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
