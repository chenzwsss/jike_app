import 'package:flutter/material.dart';
import 'package:jike_app/base_data/follow_base_data.dart';

class MiddleContent extends StatefulWidget {
  MiddleContent(this.followInfo, {Key key}): super(key: key);
  final FollowInfo followInfo;
  @override
  _MiddleContentState createState() => _MiddleContentState();
}

class _MiddleContentState extends State<MiddleContent> {
  Widget _addMainContent() {
    if (widget.followInfo.mainContent != null) {
      return Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Text(
          widget.followInfo.mainContent,
          textAlign: TextAlign.start,
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _addMarkContent() {
    if (widget.followInfo.markContent != null) {
      return Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Text(
          widget.followInfo.markContent,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.black45
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _addVideo() {
    if (widget.followInfo.videoURL != null &&
    widget.followInfo.videoThumbnail != null) {
      return GestureDetector(
        onTap: () {
          print('video paly');
        },
        child: Container(
          height: 200.0,
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          child: Container(
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Icon(
                  Icons.play_arrow,
                  size: 54.0,
                  color: Colors.grey[200],
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(widget.followInfo.headImgURL),
                fit: BoxFit.fill
            ),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _addImages() {
    if (widget.followInfo.imagesList != null) {
      if (widget.followInfo.imagesList.length <= 1) {
        return Container(
          margin: const EdgeInsets.only(left: 10.0, top: 10.0),
          alignment: Alignment.centerLeft,
          child: Image.network(
            widget.followInfo.imagesList[0],
            height: 180.0,
          ),
        );
      } else {
        return Container();
      }
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _addMainContent(),
        _addMarkContent(),
        _addVideo(),
        _addImages()
      ],
    );
  }
}