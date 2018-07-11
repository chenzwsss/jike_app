import 'package:flutter/material.dart';
import 'package:jike_app/home/home_page_sub.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            padding: const EdgeInsets.only(right: 0.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton.icon(
                    onPressed: () {
                      print('do search');
                    },
                    icon: Icon(
                      Icons.search,
                      color: Colors.black38
                    ),
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
              icon: Icon(Icons.camera_alt),
              color: Colors.black87,
              onPressed: () {
                print('do home camera');
              }
            )
          ],
          bottom: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors. blue,
            tabs: <Widget>[
              Tab(text: '关注'),
              Tab(text: '推荐'),
              Tab(text: '世界杯')
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            HomePageSub(),
            Center(child: Text('tuijian')),
            Center(child: Text('shijiebei'))
          ],
        ),
        backgroundColor: Colors.black12,
      ),
    );
  }
}