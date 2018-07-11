import 'package:flutter/material.dart';
import 'package:jike_app/base_data/follow_base_data.dart';

class BottomBar extends StatefulWidget {
  BottomBar(this.followIndexData, {Key key}): super(key: key);
  final FollowInfo followIndexData;

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  Column _generateColumn(IconData iconData, int num, Function btnFunc) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(
              icon: Icon(
                iconData,
                color: Colors.black26,
              ),
              onPressed: btnFunc,
            ),
            Text(
              num.toString(),
              style: TextStyle(
                  color: Colors.black26
              ),
            )
          ],
        )
      ],
    );
  }

  void _onThumbUp() {
    print('_onThumbUp');
  }

  void _onComment() {
    print('_onComment');
  }

  void _onInsideShare() {
    print('_onInsideShare');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          _generateColumn(Icons.thumb_up, widget.followIndexData.starNum, _onThumbUp),
          SizedBox(width: 10.0),
          _generateColumn(Icons.comment, widget.followIndexData.commentNum, _onComment),
          SizedBox(width: 10.0),
          _generateColumn(Icons.signal_wifi_4_bar, widget.followIndexData.insideShareNum, _onInsideShare),
          Expanded(
            child: IconButton(
              icon: Icon(
                Icons.share,
                color: Colors.black26,
              ),
              onPressed: () {
                print('_onShare');
              },
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20.0),
            ),
          )
        ],
      ),
    );
  }
}