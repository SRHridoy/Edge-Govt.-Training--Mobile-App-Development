// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BanglaSorborno extends StatefulWidget {
  const BanglaSorborno({super.key});

  @override
  State<BanglaSorborno> createState() => _BanglaSorbornoState();
}

class _BanglaSorbornoState extends State<BanglaSorborno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'বাংলা স্বরবর্ণ',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
        body: ListView(
      children: [
        Stack(
        children: [
        Lottie.asset(
          'assets/animations/bg_for_app.json',
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          fit: BoxFit.cover,
        ),

          Column(
            children: [
              _row(img1: '1.png', img2: '2.png'),
              _row(img1: '3.png', img2: '4.png'),
              _row(img1: '5.png', img2: '6.png'),
              _row(img1: '7.png', img2: '8.png'),
              _row(img1: '9.png', img2: '10.png'),
              _row(img1: '11.png', img2: ''),
            ],
          ),

        ]),

      ],
    ));
  }

  Widget _row({required String img1, required String img2}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _container(img1),
          _container(img2),
        ],
      ),

    );
  }

  Widget _container(String img) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        child: GestureDetector(
          onTap: () {

          },
          child: Container(
            width: 140,
            height: 140,
            decoration: img.isNotEmpty
                ? BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.5), // Light gradient start
                  Colors.blue.withOpacity(0.2),  // Light gradient end
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              backgroundBlendMode: BlendMode.overlay,
              border: Border.all(
                width: 4,
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/bangla_sorborno_imgs/$img'),
                fit: BoxFit.cover, // Makes sure the image covers the entire container
              ),
            )
                : null,
          ),
        ),
      ),
    );
  }


}


