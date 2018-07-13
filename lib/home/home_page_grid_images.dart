import 'package:flutter/material.dart';

class GridImages extends StatelessWidget {
  GridImages(this.imagesList, {Key key}): super(key: key);
  final List<String> imagesList;

  @override
  Widget build(BuildContext context) {
    if (this.imagesList != null) {
      if (this.imagesList.length <= 1) {
        return Container(
          margin: const EdgeInsets.only(left: 10.0, top: 10.0),
          alignment: Alignment.centerLeft,
          child: Image.network(
            this.imagesList[0],
            height: 180.0,
          ),
        );
      } else {
        return Container(
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            child: Column(
              children: <Widget>[
                _getImageOneRow(0),
                SizedBox(height: 5.0),
                _getImageOneRow(3),
                SizedBox(height: 5.0),
                _getImageOneRow(6)
              ],
            )
        );
      }
    } else {
      return Container();
    }
  }

  Widget _getImageOneRow(int i) {
    if (this.imagesList.length < i + 1) {
      return Container();
    } else {
      return Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: _getImage(i)
          ),
          SizedBox(width: 5.0),
          Expanded(
              flex: 1,
              child: _getImage(i + 1)
          ),
          SizedBox(width: 5.0),
          Expanded(
              flex: 1,
              child: _getImage(i + 2)
          )
        ],
      );
    }
  }

  Widget _getImage(int index) {
    if (this.imagesList.length >= index + 1) {
      return Image.network(
        this.imagesList[index],
        height: 120.0,
        fit: BoxFit.fill,
      );
    } else {
      return Container();
    }
  }
}