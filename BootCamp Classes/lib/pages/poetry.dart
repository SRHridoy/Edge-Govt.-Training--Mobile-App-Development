// ignore_for_file: prefer_const_constructors, unused_field

import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Poetry extends StatefulWidget {
  const Poetry({super.key});

  @override
  State<Poetry> createState() => _PoetryState();
}

class _PoetryState extends State<Poetry> {
  final poetryUrls = [
    'https://www.youtube.com/watch?v=GvWKazHM3W8',
    'https://www.youtube.com/watch?v=xq4gyh5_og0',
    'https://www.youtube.com/watch?v=BFc40euGwpY',
    'https://www.youtube.com/watch?v=BFc40euGwpY',
    'https://www.youtube.com/watch?v=9pIBPWO0BTo',
    'https://www.youtube.com/watch?v=AC5FtK-3-qs',
    'https://www.youtube.com/watch?v=Gg_mKKhfdn4',
  ];

  late List<YoutubePlayerController> _controllers;

  @override
  void initState() {
    super.initState();

    //Initialize controllers
    _controllers = poetryUrls.map((url) {
      final videoId = YoutubePlayerController.convertUrlToId(url);
      if (videoId == null) {
        debugPrint('Invalid YouTube URL: $url');
        return YoutubePlayerController(
          params: YoutubePlayerParams(
            showControls: false,
            showFullscreenButton: false,
          ),
        );
      }
      return YoutubePlayerController.fromVideoId(
        videoId: videoId,
        params: YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      );
    }).toList();
  }

  @override
  void dispose() {
    // Dispose of all controllers
    for (final controller in _controllers) {
      controller.close();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ছোটদের ছড়ার আসর'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _controllers.length,
        itemBuilder: (context, index) {
          return thumbNail(index);
        },
      ),
    );
  }

  Widget thumbNail(int index) {
   final controller = _controllers[index];
    return Container(
      height: 200,
      margin: EdgeInsets.all(10),
     child: YoutubePlayer(
       controller: controller,
        aspectRatio: 16 / 9,
     ),
    );
  }
}
