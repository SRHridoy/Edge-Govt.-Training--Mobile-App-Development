// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BanglaSorborno extends StatefulWidget {
  const BanglaSorborno({super.key});

  @override
  State<BanglaSorborno> createState() => _BanglaSorbornoState();
}

class _BanglaSorbornoState extends State<BanglaSorborno> {

  final AudioPlayer player = AudioPlayer();

  //play the audio :
  void _playSound(String alphabetName) async{
    try {
      await player.play(AssetSource('audios/bangla_sorborno/$alphabetName'));
    }catch (e) {
      if(kDebugMode){
        print('Error Playing : $e');
      }
    }
  }
  @override
  void dispose() {
    super.dispose();
    // Dispose of the audio player when not in use
    player.dispose();
  }


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
              _row(sorborno1: 'অ',sorborno1Audio: '1.opus',sorborno2: 'আ',sorborno2Audio: '2.opus'),
              _row(sorborno1: 'ই',sorborno1Audio: '3.opus',sorborno2: 'ঈ',sorborno2Audio: '4.opus'),
              _row(sorborno1: 'উ',sorborno1Audio: '5.opus',sorborno2: 'ঊ',sorborno2Audio: '6.opus'),
              _row(sorborno1: 'ঋ',sorborno1Audio: '7.opus',sorborno2: 'এ',sorborno2Audio: '8.opus'),
              _row(sorborno1: 'ঐ',sorborno1Audio: '9.opus',sorborno2: 'ও',sorborno2Audio: '10.opus'),
              _row(sorborno1: 'ঔ',sorborno1Audio: '11.opus',sorborno2: '',sorborno2Audio: ''),

            ],
          ),

        ]),

      ],
    ));
  }

  Widget _row({required String sorborno1, required String sorborno1Audio ,required String sorborno2,required String sorborno2Audio}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _container(sorborno1,sorborno1Audio),
          _container(sorborno2,sorborno2Audio),
        ],
      ),

    );
  }

  Widget _container(String sorborno,String alphabetName) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _playSound(alphabetName);

            });
          },
          child: Container(
            width: 140,
            height: 140,
            decoration: sorborno.isNotEmpty
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
            )
                : null,
            child: Center(child: Text(sorborno,style: TextStyle(color: Colors.black,fontSize: 40,),)),
          ),
        ),
      ),
    );
  }


}


