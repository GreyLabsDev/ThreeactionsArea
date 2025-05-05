import 'package:flutter/material.dart';
import 'package:threeactions_area/widgets/base/SocialButton.dart';
import 'package:threeactions_area/widgets/base/TextContent.dart';
import 'package:threeactions_area/widgets/base/TextContentBig.dart';
import 'package:threeactions_area/widgets/portfolio_widgets/EventsBlock.dart';
import 'package:threeactions_area/widgets/svg_painters/IconGithub.dart';
import 'package:threeactions_area/widgets/svg_painters/IconGoogle.dart';
import 'package:threeactions_area/widgets/svg_painters/IconLinkedIn.dart';
import 'package:threeactions_area/widgets/svg_painters/IconXTwitter.dart';

import '../resources/Resources.dart';
import '../widgets/base/SkillsColumn.dart';
import '../widgets/base/TextTitle.dart';
import '../widgets/portfolio_widgets/WorkExpTimeline.dart';
import 'base/BaseInfoPage.dart';

class PortfolioMainPage extends StatelessWidget {
  const PortfolioMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BgDarkBlue,
      body: BaseInfoPage(
        title: "SKLS",
        mainImageAsset: "assets/img/button_bg_skills.png",
        logoImageAsset: "assets/img/logo_skills_big.png",
        subtitle: "S.SH",
        isAllPaddingEnabled: false,
        isHorizontalPaddingEabled: true,
        accentFilterColor: AppColors.ContentDarkBlue,
        bgColor: AppColors.BgDarkBlue,
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 8.0,
            ),
            TextTitle(
              text: "Android Developer\n-\nSpeaker",
              textColor: AppColors.ContentDarkBlue,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8.0,
            ),
            TextContentBig(
              text:
                  "Software engeneering and information security\n7 years of software development experience\n9 years IT experience",
              textColor: AppColors.ContentDarkBlue,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 32.0,
            ),
            EventsBlock(
              titleColor: AppColors.ContentDarkBlue,
            ),
            SizedBox(
              height: 32.0,
            ),
            TextTitle(
              text: "Work and skills",
              textColor: AppColors.ContentDarkBlue,
            ),
            SizedBox(
              height: 16.0,
            ),
            _buildAdaptiveSkillTable(true),
            SizedBox(
              height: 32.0,
            ),
            TextContentBig(
              text: "Social",
              textColor: AppColors.ContentDarkBlue,
            ),
            SizedBox(
              height:8.0,
            ),
            // https://www.figma.com/community/file/839558611085349133
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: SocialButtonWithContent(redirectUrl: "mailto:greyson.dean@email.com", child: IconGoogle(color: AppColors.ContentDarkBlue),)
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: SocialButtonWithContent(redirectUrl: "https://github.com/GreyLabsDev", child: IconGithub(color: AppColors.ContentDarkBlue),)
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: SocialButtonWithContent(redirectUrl: "https://www.linkedin.com/in/sergey-sh/", child: Iconlinkedin(color: AppColors.ContentDarkBlue),)
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: SocialButtonWithContent(redirectUrl: "https://twitter.com/sergey_shr", child: IconXTwitter(color: AppColors.ContentDarkBlue),)
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildAdaptiveSkillTable(bool useRow) {
  return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
    bool useDefaultRow = constraints.maxWidth >= 770;
    if (useDefaultRow) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: WorkExpTimeline(),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: SkillsColumn([
              SkillItem("Main", ["Android", "Kotlin", "Java", "Flutter"]),
              SkillItem("UI", ["Jetpack Compose", "XML"]),
              SkillItem("Data", [
                "Realm",
                "Room",
                "SQL",
                "Retrofit",
                "GraphQL",
                "WebSocket",
                "Firebase",
                "JSON",
                "XML"
              ]),
              SkillItem("Architecture", [
                "Clean",
                "MVP",
                "MVVM",
                "MVI",
                "Redux",
                "Multi Module",
                "SDUI/BDUI"
              ]),
              SkillItem("DI", ["Dagger 2", "Koin", "Hilt"]),
              SkillItem("Async", ["RxJava 2", "Kotlin Coroutines", "Threads"]),
              SkillItem("Soft", [
                "Public Speaking",
                "Tech interviews",
                "Design/Tech review",
                "Teamwork",
                "Feature leading",
              ]),
              SkillItem("Other", [
                "Python",
                "Figma",
              ]),
            ], 16.0),
          )
        ],
      );
    } else {
      return Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.center,
        spacing: 16.0,
        runSpacing: 16.0,
        children: [
          WorkExpTimeline(),
          SkillsColumn([
              SkillItem("Main", ["Android", "Kotlin", "Java", "Flutter"]),
              SkillItem("UI", ["Jetpack Compose", "XML"]),
              SkillItem("Data", [
                "Realm",
                "Room",
                "SQL",
                "Retrofit",
                "GraphQL",
                "JSON",
                "XML"
              ]),
              SkillItem("Architecture", [
                "Clean",
                "MVP",
                "MVVM",
                "MVI",
                "Redux",
                "Multi Module",
                "SDUI/BDUI"
              ]),
              SkillItem("DI", ["Dagger 2", "Koin", "Hilt"]),
              SkillItem("Async", ["RxJava 2", "Kotlin Coroutines", "Threads"]),
              SkillItem("Soft", [
                "Public Speaking",
                "Tech interviews",
                "Design/Tech review",
                "Teamwork",
                "Feature leading",
              ]),
              SkillItem("Other", [
                "Python",
                "Figma",
                "FreeCAD"
              ]),
            ], 32.0),
        ],
      );
    }
  });
}
