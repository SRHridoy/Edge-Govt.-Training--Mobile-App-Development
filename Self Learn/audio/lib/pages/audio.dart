// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Audio extends StatefulWidget {
  Audio({super.key});

  @override
  State<Audio> createState() => _AudioState();
}

class _AudioState extends State<Audio> {
  //start of stop:
  bool isStop = true;

  // Create an instance of the audio player
  final AudioPlayer _audioPlayer = AudioPlayer();

  // Function to play the custom sound
  void _playSound() async {
    try {
      // Load and play the sound file
      await _audioPlayer.play(AssetSource('doraemon_silent.mp3'));
    } catch (e) {
      if (kDebugMode) {
        print("Error playing sound: $e");
      }
    }
  }

  //stop :
  void _stopSound() async {
    await _audioPlayer.stop();
  }

  @override
  void dispose() {
    // Dispose of the audio player when not in use
    _audioPlayer.dispose();
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
        backgroundColor: Colors.red,
      ),
      body: Stack(children: [
        Lottie.asset(
          'animations/bg_for_app.json',
          //height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          fit: BoxFit.cover,
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isStop = !isStop;
                    if (isStop) {
                      _playSound();
                    } else {
                      _stopSound();
                    }
                  });
                },
                child: Container(
                  width: 300,
                  height: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'btn.jpg',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //padding: EdgeInsets.all(8),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isStop = !isStop;
                    if (isStop) {
                      _playSound();
                    } else {
                      _stopSound();
                    }
                  });
                },
                child: Container(
                  width: 300,
                  height: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'duo.jpg',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isStop = !isStop;
                    if (isStop) {
                      _playSound();
                    } else {
                      _stopSound();
                    }
                  });
                },
                child: Container(
                  width: 300,
                  height: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'trio.jpg',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //padding: EdgeInsets.all(8),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isStop = !isStop;
                    if (isStop) {
                      _playSound();
                    } else {
                      _stopSound();
                    }
                  });
                },
                child: Container(
                  width: 300,
                  height: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'rat_enemy.jpg',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //padding: EdgeInsets.all(8),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
