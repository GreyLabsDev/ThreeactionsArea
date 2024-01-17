import 'package:flutter/material.dart';
import 'package:threeactions_area/pages/TestPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Threeactions',
      home: TestPage(),
    );
  }
}
