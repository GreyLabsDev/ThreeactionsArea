import 'dart:math';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:threeactions_area/pages/base/BaseInfoPage.dart';
import 'package:threeactions_area/widgets/base/TextContent.dart';
import 'package:threeactions_area/widgets/base/TextContentMin.dart';
import 'package:threeactions_area/widgets/base/TextSubtitle.dart';
import 'package:threeactions_area/widgets/base/TextTitle.dart';
import 'package:threeactions_area/widgets/base/TextTitleBig.dart';

class UiTestpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UiTestPageState();
  }
}

class UiTestPageState extends State {
  @override
  Widget build(BuildContext context) {
    return BaseInfoPage(
        title: "UiTestPage",
        mainImageAsset: "assets/img/button_bg_skills.png",
        logoImageAsset: "assets/img/logo_skills_big.png",
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WorkExpTimeline(),
            SkillsColumn([
              SkillItem("Main", ["Android", "Kotlin", "Java", "Flutter"]),
              SkillItem("UI", ["Jetpack Compose", "XML"]),
              SkillItem(
                  "Data", ["Realm", "Room", "SQL", "Retrofit", "GraphQL"]),
              SkillItem(
                  "Architecture", ["Clean", "MVP", "MVVM", "MVI", "Redux"]),
              SkillItem("DI", ["Dagger 2", "Koin", "Hilt"]),
              SkillItem("Async", ["RxJava 2", "Kotlin Coroutines", "Hilt"]),
            ])
          ],
        ));
  }
}

class SkillItem {
  String name;
  List<String> skillsList;

  SkillItem(this.name, this.skillsList);
}

class SkillsColumn extends StatelessWidget {
  final List<SkillItem> items;

  SkillsColumn(this.items);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: _buildRowContent(),
    );
  }

  List<Widget> _buildRowContent() {
    return items.map((item) => SkillsBlock(item)).toList();
  }
}

class SkillsBlock extends StatelessWidget {
  final SkillItem item;

  SkillsBlock(this.item);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextSubtitle(text: item.name),
          Wrap(
            spacing: 4.0,
            children: _buildWrapContent(item.skillsList),
          )
        ],
      ),
    );
  }

  List<Widget> _buildWrapContent(List<String> items) {
    return items
        .map((item) => Container(
              padding: EdgeInsets.all(4.0),
              color: Colors.blueGrey,
              child: TextContent(text: item),
            ))
        .toList();
  }
}

class WorkExpTimeline extends StatelessWidget {
  Widget _buildExpItem(String date, String companyInfo, String description) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 16.0,
            height: 2.0,
            color: Colors.white,
          ),
          SizedBox(
            width: 8.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextSubtitle(text: date),
              TextContent(text: companyInfo),
              TextContentMin(text: description)
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 2.0,
            color: Colors.white,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildExpItem(
                  "2016-2018",
                  "HOSTCO - Information Security Analyst",
                  "Audit and integration of security\nsystems in IT companies"),
              _buildExpItem("2018", "ARGIN - Android Developer",
                  "Augmented reality projects, video/image\ntracking"),
              _buildExpItem("2018-2019", "EastWind - Android Developer",
                  "Custom development, projects in\nbanking, services and marketplaces"),
              _buildExpItem(
                  "2019-2021",
                  "Home Credit Bank - Middle Android Developer",
                  "FinTech (financial technology), private\nbanking, marketplace, loan projects"),
              _buildExpItem(
                  "2021 - Current time",
                  "Skyeng - Senior Android Developer",
                  "EdTech (educational technology),\ninternational language learning projects"),
            ],
          )
        ],
      ),
    );
  }
}
