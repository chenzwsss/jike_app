import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.person_add,
              color: Colors.black87,
            ),
            onPressed: () {
              print('person add');
            },
          ),
          title: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    '我的',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black
                    ),
                  )
                )
              ],
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.black87,
              ),
              onPressed: () {
                print('open settings');
              },
            )
          ],
        ),
        body: Center(
          child: Text('Mine Page'),
        )
    );
  }
}