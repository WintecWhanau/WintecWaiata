import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:wintec_waiata/shared/ApplicationBar.dart';
import 'package:wintec_waiata/shared/Lyrics.dart';
import 'package:wintec_waiata/shared/WaiataAux.dart';

//TODO: Videos will change based on their given paths in the json file. assets/json/waiata.json

class WaiataPlayback extends StatefulWidget {
  
  WaiataPlayback({
    Key key
  }): super(key: key);

  @override
  _WaiataPlaybackState createState() => _WaiataPlaybackState();
}

class _WaiataPlaybackState extends State < WaiataPlayback > {

  VideoPlayerController _controller;
  ChewieController chewieController;
  Chewie playerWidget;
  String videoPath;

  @override
  void initState() {

    if(WaiataAux.waiata.vocal){
      videoPath = WaiataAux.waiata.vocalPath;
      print(videoPath);
    }
    else{
      videoPath = WaiataAux.waiata.nonVocalPath;
      print(videoPath);
    }

    _controller = VideoPlayerController.asset(
      videoPath,
    );

    chewieController = ChewieController(
      videoPlayerController: _controller,
      aspectRatio: 16 / 9,
      autoPlay: true,
      looping: false,
      allowedScreenSleep: false,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(
        context: context,
        title: Text(
          WaiataAux.waiata.name,
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
      ),
      body: Column(
        children: < Widget > [
          Chewie(
            controller: chewieController,
          ),
          Expanded(
            child: Lyrics(),
          ),
        ],
      ),
    );
  }
}