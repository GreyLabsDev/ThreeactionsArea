import 'package:flutter/material.dart';
import 'package:threeactions_area/pages/MainPage.dart';
import 'package:threeactions_area/pages/TestPage.dart';
import 'package:threeactions_area/pages/base/BaseInfoPage.dart';
import 'package:threeactions_area/widgets/base/TextTitle.dart';

import 'pages/MusicReleasesPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Threeactions',
      home: MusicReleasePage(),
    );
  }
}
