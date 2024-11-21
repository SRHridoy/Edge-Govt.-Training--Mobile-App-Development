// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kids_areana/topics/bangla_sorborno.dart';
import 'package:kids_areana/topics/english_alphabets.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TopicSection(),
      initialRoute: '/',
      routes: {
        'english_alphabets':(context) => const EnglishAlphabets(),
        'bangla_sorborno':(context) => const BanglaSorborno(),
      },
    );
  }
}

class TopicSection extends StatelessWidget {
  const TopicSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Lottie.asset(
            'assets/animations/bg_for_app.json',
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            fit: BoxFit.cover,
          ),
          
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _button(context: context, routeName: 'bangla_sorborno', imageName: 'sorborno.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _button(context: context, routeName: 'english_alphabets', imageName: 'english.png'),
              ), Padding(
                padding: const EdgeInsets.all(8.0),
                child: _button(context: context, routeName: 'bangla_sorborno', imageName: 'sorborno.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _button(context: context, routeName: 'english_alphabets', imageName: 'english.png'),
              ),

            ],
          )
        ],
      ),
    );
  }

  Widget _button({ required BuildContext context,required String routeName,required String imageName}){
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Center(
        child: Container(
          height: 100,
          width: 300,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/btn_images/$imageName'),fit: BoxFit.cover,),
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.5), // Light gradient start
                  Colors.blue.withOpacity(0.2), // Light gradient end
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            backgroundBlendMode: BlendMode.overlay,
            borderRadius: BorderRadius.circular(20)
          ),
        ),
      ),
    );
  }
}

