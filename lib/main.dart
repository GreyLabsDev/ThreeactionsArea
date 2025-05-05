import 'package:flutter/material.dart';
import 'package:threeactions_area/pages/MusicReleasesPage.dart';
import 'package:threeactions_area/pages/PortfolioMainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Threeactions',
      home: PortfolioMainPage(),
    );
  }
}
