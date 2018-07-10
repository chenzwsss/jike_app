import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton.icon(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black38
                    ),
                    onPressed: () {
                      print('discover search');
                    },
                    label: Text(
                      '我不是药神',
                      style: TextStyle(
                          color: Colors.black38
                      ),
                    ),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(const Radius.circular(6.0)),
              color: Colors.black12
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.center_focus_weak),
              color: Colors.black87,
              onPressed: () {
                print('do discover camera');
              }
            )
          ],
        ),
        body: Center(
          child: Text('Discover Page'),
        )
    );
  }
}