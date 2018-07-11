import 'package:flutter/material.dart';
import 'package:jike_app/base_data/follow_base_data.dart';

class TitleBar extends StatelessWidget {
  TitleBar(this.followIndexData, {Key key}): super(key: key);
  final FollowInfo followIndexData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0, top: 5.0),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: AspectRatio(
              aspectRatio: 40 / 40,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(this.followIndexData.headImgURL)
                  ),
                  borderRadius: const BorderRadius.all(const Radius.circular(4.0))
                ),
              ),
            )
          ),
          SizedBox(width: 15.0),
          Expanded(
            flex: 9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  this.followIndexData.headTitle,
                  style: TextStyle(
                    color: Colors.blue
                  ),
                ),
                Text(
                  this.followIndexData.time,
                  style: TextStyle(
                    color: Colors.black26
                  ),
                )
              ],
            )
          ),
          Expanded(
            flex: 2,
            child: IconButton(
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black26
              ),
              onPressed: () {
                print('extra actions');
              },
            ),
          )
        ],
      )
    );
  }
}