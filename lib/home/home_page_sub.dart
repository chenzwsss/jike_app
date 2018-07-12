import 'package:flutter/material.dart';
import 'package:jike_app/base_data/follow_base_data.dart';
import 'package:jike_app/home/home_page_title_bar.dart';
import 'package:jike_app/home/home_page_middle_content.dart';
import 'package:jike_app/home/home_page_bottom_bar.dart';

class HomePageSub extends StatefulWidget {
  @override
  _HomePageSubState createState() => _HomePageSubState();
}

class _HomePageSubState extends State<HomePageSub> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: followInfoList.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.only(top: 8.0),
          color: Colors.white,
          child: Column(
            children: <Widget>[
              TitleBar(followInfoList[index]),
              MiddleContent(followInfoList[index]),
              Container(
                height: 1.0,
                color: Colors.black12,
                margin: const EdgeInsets.only(left: 10.0, top: 15.0, right: 10.0),
              ),
              BottomBar(followInfoList[index])
            ],
          )
        );
      },
    );
  }
}