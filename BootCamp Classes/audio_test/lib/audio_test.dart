// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AudioTest extends StatefulWidget {
  const AudioTest({super.key});

  @override
  State<AudioTest> createState() => _AudioTestState();
}

class _AudioTestState extends State<AudioTest> with TickerProviderStateMixin {
  //Audio section :
  bool isOn = true;
  final player = AudioPlayer();
  void _playAudio() async{
    await player.play(AssetSource('audios/intro_doraemon.mp3'));
  }

  void _pause() async{
    await player.pause();
  }

  void _resume() async{
    await player.resume();
  }

  //Lottie animation Section:
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this,duration: Duration(seconds: 3));

    // Listen for the end of the audio and restart playback
    player.onPlayerComplete.listen((event) {
      if (isOn) {
        _playAudio();
      }
    });
  }

  @override
  void dispose() async {
    _controller.dispose();
    await player.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Audio Test', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image(
              alignment: Alignment.center,
              image: AssetImage('assets/images/doraemon_nobita.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              bottom: -10,
              right: -70,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isOn = !isOn; // Toggle state
                  });

                  if (isOn) {
                    // Pause audio
                    _pause();
                    _controller.reverse(); // Play reverse animation
                  } else {
                    // Play or resume audio
                    if (player.state == PlayerState.paused) {
                      _resume();
                    } else {
                      _playAudio();
                    }
                    _controller.forward(); // Play forward animation
                  }
                },
                child: Lottie.asset('assets/animations/play_pause.json',
                controller: _controller,
                  repeat: false,
                ),
              ),

          ),
        ],
      ),
    );
  }
}
