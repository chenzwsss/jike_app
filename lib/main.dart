import 'package:flutter/material.dart';
import 'package:jike_app/pages/index_page.dart';

void main() {
  runApp(JikeApp());
}

class JikeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JikeApp',
      home: IndexPage(),
    );
  }
}