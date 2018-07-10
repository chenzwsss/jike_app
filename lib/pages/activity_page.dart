import 'package:flutter/material.dart';

class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.chat,
              color: Colors.black87,
            ),
            onPressed: () {
              print('do chat');
            },
          ),
          title: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    '动态',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black
                    ),
                  ),
                )
              ],
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.camera_alt,
                color: Colors.black87,
              ),
              onPressed: () {
                print('do activity camera');
              },
            )
          ],
        ),
        body: Center(
          child: Text('Activity Page'),
        )
    );
  }
}