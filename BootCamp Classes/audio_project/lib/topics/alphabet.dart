// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Alphabet extends StatefulWidget {
  const Alphabet({super.key});

  @override
  State<Alphabet> createState() => _AlphabetState();
}

class _AlphabetState extends State<Alphabet> {
  final AudioPlayer player = AudioPlayer();

  //play the audio :
  void _playSound(String alphabetName) async{
    try {
      await player.play(AssetSource('audios/$alphabetName'));
    }catch (e) {
      if(kDebugMode){
        print('Error Playing : $e');
      }
    }
  }
  @override
  void dispose() {
    // Dispose of the audio player when not in use
    player.dispose();
    this.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'English A to Z',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: _buildUI(),
    );
  }

  Widget _buildUI() {
    return Stack(
      children: [
        Lottie.asset(
          'assets/animations/bg_for_app.json',
          //height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          fit: BoxFit.cover,
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  _rowElements('1.png','A.wav'),
                  _rowElements('2.png','B.wav'),
                  _rowElements('3.png','C.wav'),
                  _rowElements('4.png','D.wav'),
                ],
              ),Row(
                children: [
                  _rowElements('5.png','E.wav'),
                  _rowElements('6.png','F.wav'),
                  _rowElements('7.png','G.wav'),
                  _rowElements('8.png','H.wav'),
                ],
              ),Row(
                children: [
                  _rowElements('9.png','I.wav'),
                  _rowElements('10.png','J.wav'),
                  _rowElements('11.png','K.wav'),
                  _rowElements('12.png','L.wav'),
                ],
              ),Row(
                children: [
                  _rowElements('13.png','M.wav'),
                  _rowElements('14.png','N.wav'),
                  _rowElements('15.png','O.wav'),
                  _rowElements('16.png','P.wav'),
                ],
              ),Row(
                children: [
                  _rowElements('17.png','Q.wav'),
                  _rowElements('18.png','R.wav'),
                  _rowElements('19.png','S.wav'),
                  _rowElements('20.png','T.wav'),
                ],
              ),Row(
                children: [
                  _rowElements('21.png','U.wav'),
                  _rowElements('22.png','V.wav'),
                  _rowElements('23.png','W.wav'),
                  _rowElements('24.png','X.wav'),
                ],
              ),Row(
                children: [
                  _rowElements('25.png','Y.wav'),
                  _rowElements('26.png','Z.wav'),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _rowElements(String imageFileName,String audioFileName) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _playSound(audioFileName);
        });
      },
      child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/alphabets/$imageFileName',
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

}
