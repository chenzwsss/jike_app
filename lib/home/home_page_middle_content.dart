import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MiddleContent extends StatefulWidget {
  @override
  _MiddleContentState createState() => _MiddleContentState();
}

class _MiddleContentState extends State<MiddleContent> {
  VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();

    _videoPlayerController = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/videos/butterfly.mp4'
    )
    ..initialize().then((_) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _videoPlayerController.value.initialized
          ? AspectRatio(
        aspectRatio: _videoPlayerController.value.aspectRatio,
        child: VideoPlayer(_videoPlayerController),
      )
          : Container()
    );
  }
}