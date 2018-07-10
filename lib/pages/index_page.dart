import 'package:flutter/material.dart';
import 'package:jike_app/pages/home_page.dart';
import 'package:jike_app/pages/activity_page.dart';
import 'package:jike_app/pages/discover_page.dart';
import 'package:jike_app/pages/mine_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _currentIndex = 0;
  List<StatefulWidget> _pagesList;

  @override
  void initState() {
    super.initState();

    _pagesList = <StatefulWidget>[
      HomePage(),
      ActivityPage(),
      DiscoverPage(),
      MinePage(),
    ];
  }

  StatefulWidget getCurrentPage() {
    return _pagesList[this._currentIndex];
  }

  BottomNavigationBar addBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (int index) {
        setState(() {
          this._currentIndex = index;
        });
      },
      fixedColor: Colors.blue,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem> [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('动态')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('发现')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            title: Text('我的')
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: Scaffold(
        body: getCurrentPage(),
        bottomNavigationBar: addBottomNavigationBar()
      )
    );
  }
}