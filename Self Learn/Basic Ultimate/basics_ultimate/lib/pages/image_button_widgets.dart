// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';

class ImageButton extends StatefulWidget {
  const ImageButton({super.key});

  @override
  State<ImageButton> createState() => _ImageButtonState();
}

class _ImageButtonState extends State<ImageButton> {
  bool _unTapped1 = true;
  bool _unTapped2 = true;
  bool _unTapped3 = true;
  bool _unTapped4 = true;
  bool _unTapped5 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
            heightFactor: 2.5,
            alignment: Alignment.bottomCenter,
            child: Text(
              'Image Button Homework',
              style:
              TextStyle(color: Colors.pink, fontWeight: FontWeight.bold,backgroundColor: Colors.teal[50]),
            )),
        flexibleSpace: Image.asset(
          'assets/images/appbar_image.jpg',
          fit: BoxFit.cover,
          opacity: AlwaysStoppedAnimation(.3),
        ),
        toolbarHeight: 95,
        elevation: 15,
        shadowColor: Colors.teal,
      ),
      backgroundColor: Colors.teal[50],
      body: ListView(
        padding: EdgeInsets.fromLTRB(30, 80, 30, 20),
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _unTapped1 = !_unTapped1;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.lightBlueAccent,
                    blurRadius: 10,
                    spreadRadius: 3,
                    offset: Offset(0, 4),
                  )
                ],
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/trio.jpg',
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
              ),
              //padding: EdgeInsets.all(8),
              height: 80,
              child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: _unTapped1
                        ? Colors.transparent
                        : Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    _unTapped1 ? '' : 'নোবিতা , জিয়ান, সুনিও = বেস্ট ট্রাইও',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _unTapped2 = !_unTapped2;
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
                      'assets/images/partner.jpg',
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
              ),
              //padding: EdgeInsets.all(8),
              height: 80,
              child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: _unTapped2 ? Colors.transparent : Colors.pink,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    _unTapped2 ? '' : 'নোবিতা + সুজুকা = ❤️',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _unTapped3 = !_unTapped3;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.green,
                    blurRadius: 10,
                    spreadRadius: 3,
                    offset: Offset(0, 4),
                  )
                ],
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/kabab_haddi.jpg',
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
              ),
              //padding: EdgeInsets.all(8),
              height: 80,
              child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: _unTapped3 ? Colors.transparent : Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    _unTapped3 ? '' : 'নোবিতা ,সুজুকা, ডোরেমন = 👌',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _unTapped4 = !_unTapped4;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.yellow,
                    blurRadius: 10,
                    spreadRadius: 3,
                    offset: Offset(0, 4),
                  )
                ],
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/best_friend.jpg',
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
              ),
              //padding: EdgeInsets.all(8),
              height: 80,
              child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: _unTapped4 ? Colors.transparent : Colors.yellow,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    _unTapped4 ? '' : 'নোবিতা + ডোরেমন = বেস্ট ফ্রেন্ড',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _unTapped5 = !_unTapped5;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepOrange,
                    blurRadius: 10,
                    spreadRadius: 3,
                    offset: Offset(0, 4),
                  )
                ],
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/they_are.jpg',
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
              ),
              //padding: EdgeInsets.all(8),
              height: 80,
              child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: _unTapped5 ? Colors.transparent : Colors.deepOrange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    _unTapped5 ? '' : 'ছোটবেলার আবেগ = ডোরেমন❗',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
