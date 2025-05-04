import 'dart:core';

import 'package:flutter/material.dart';
import 'package:threeactions_area/pages/base/BaseInfoPage.dart';
import '../widgets/bio_widgets/BioInfoContent.dart';

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
        content: BioInfoContent(
          data: [
            BioInfoModel("assets/img/img_gallery_2.jpg", "title", "description"),
            BioInfoModel("assets/img/img_gallery_2.jpg", "title", "description"),
            BioInfoModel("assets/img/img_gallery_2.jpg", "title", "description"),
            BioInfoModel("assets/img/img_gallery_2.jpg", "title", "description"),
            BioInfoModel("assets/img/img_gallery_2.jpg", "title", "description"),
          ],
        )
        );
  }
}