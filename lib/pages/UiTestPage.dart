import 'dart:math';

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
        content: WorkExpTimeline());
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
