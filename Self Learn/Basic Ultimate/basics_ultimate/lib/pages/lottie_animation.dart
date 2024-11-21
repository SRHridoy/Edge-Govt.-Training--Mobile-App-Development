// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatefulWidget {
  const LottieAnimation({super.key});

  @override
  State<LottieAnimation> createState() => _LottieAnimationState();
}

class _LottieAnimationState extends State<LottieAnimation> with SingleTickerProviderStateMixin {

  late final AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this,duration: Duration(seconds: 3));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUI(),
      floatingActionButton:FloatingActionButton(onPressed: () {
        var ticker = _controller.forward();
        ticker.whenComplete(() {
          _controller.reset();
        },);
      },child: Icon(Icons.play_arrow),),
    );
  }

  Widget _buildUI() {
    return Stack(
      children: [
        Center(
          child: Lottie.asset(
            'assets/animations/birds_flying.json',
            repeat: true,
            reverse: true,
            // width: 500,
            // height: 500,
          ),
        ),
        Lottie.asset('assets/animations/confetti.json',
          controller: _controller,
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          fit: BoxFit.cover,
          repeat: false,
        ),
      ],
    );
  }
}
