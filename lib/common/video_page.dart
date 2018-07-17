import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:jike_app/base_data/follow_base_data.dart';

class VideoPage extends StatefulWidget {
  VideoPage(this.followInfo, {Key key}): super(key: key);
  final FollowInfo followInfo;
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {

  VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.network(widget.followInfo.videoURL)
    ..addListener(() {
      final isPlaying = _controller.value.isPlaying;
      if (isPlaying != _isPlaying) {
        setState(() {
          _isPlaying = isPlaying;
        });
      }
    })
    ..initialize().then((_) {
      setState(() { });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 20.0, left: 10.0),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.network(widget.followInfo.headImgURL, width: 30.0, height: 30.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              widget.followInfo.headTitle,
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                            Text(
                              widget.followInfo.time,
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Center(
                child: _controller.value.initialized
                    ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
                    : CircularProgressIndicator()
            ),
          ),
          Row(
            children: <Widget>[
              IconButton(
                onPressed: _controller.value.isPlaying ? _controller.pause
                    : _controller.play,
                icon: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow, color: Colors.white)
              )
            ],
          )
        ],
      )
    );
  }
}