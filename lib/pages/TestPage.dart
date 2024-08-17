import 'package:flutter/material.dart';
import 'package:threeactions_area/pages/UiTestPage.dart';
import 'package:threeactions_area/resources/Resources.dart';
import 'package:threeactions_area/widgets/base/TextContent.dart';
import 'package:threeactions_area/widgets/base/TextSubtitle.dart';
import 'package:threeactions_area/widgets/base/TextTitle.dart';

import '../widgets/base/ImageGallery.dart';
import '../widgets/base/MainPageInfoButton.dart';
import '../widgets/base/SocialButton.dart';
import 'base/BaseInfoPage.dart';

class TestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TestPageState();
}

class TestPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 32.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextTitle(
                    text:
                        "S.SH - android developer - flutter enthusiast - speaker"),
              ],
            ),
            SizedBox(
              height: 32.0,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MainPageInfoButton(
                    number: 1,
                    title: "SKLS",
                    bgImageAsset: "assets/img/button_bg_skills.png",
                    logoBaseImageAsset: "assets/img/logo_skills_base.png",
                    logoMovingPartImageAssetTop:
                        "assets/img/logo_skills_part.png",
                    logoMovingPartImageAssetBottom:
                        "assets/img/logo_skills_part.png",
                    onClickedAction: () =>
                        _openInfoPage(context, _createSkillsInfoPage()),
                  ),
                  VerticalDivider(
                    width: 2.0,
                    color: Colors.white,
                  ),
                  MainPageInfoButton(
                      number: 2,
                      title: "BIO",
                      bgImageAsset: "assets/img/button_bg_bio.png",
                      logoBaseImageAsset: "assets/img/logo_bio_base.png",
                      logoMovingPartImageAssetTop:
                          "assets/img/logo_bio_part.png",
                      logoMovingPartImageAssetBottom:
                          "assets/img/logo_bio_part.png",
                      logoPartsExtraPadding: 28.0,
                      onClickedAction: () =>
                          _openInfoPage(context, _createBioInfoPage())),
                  VerticalDivider(
                    width: 2.0,
                    color: Colors.white,
                  ),
                  MainPageInfoButton(
                      number: 3,
                      title: "ART",
                      bgImageAsset: "assets/img/button_bg_art.png",
                      logoBaseImageAsset: "assets/img/logo_art_base.png",
                      logoMovingPartImageAssetTop:
                          "assets/img/logo_art_part_top.png",
                      logoMovingPartImageAssetBottom:
                          "assets/img/logo_art_part_bottom.png",
                      onClickedAction: () =>
                          _openInfoPage(context, _createArtInfoPage())),
                  VerticalDivider(
                    width: 2.0,
                    color: Colors.white,
                  ),
                  MainPageInfoButton(
                      number: 4,
                      title: "CNCT",
                      bgImageAsset: "assets/img/button_bg_contacts.png",
                      logoBaseImageAsset: "assets/img/logo_contacts_base.png",
                      logoMovingPartImageAssetTop:
                          "assets/img/logo_contacts_part_top.png",
                      logoMovingPartImageAssetBottom:
                          "assets/img/logo_contacts_part_bottom.png",
                      logoPartsExtraPadding: 28.0,
                      onClickedAction: () =>
                          _openInfoPage(context, _createContactInfoPage())),
                  VerticalDivider(
                    width: 2.0,
                    color: Colors.white,
                  ),
                ],
              ),
            )
          ],
        ));
  }

  void _openInfoPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  Widget _createSkillsInfoPage() {
    return BaseInfoPage(
      title: "SKLS",
      mainImageAsset: "assets/img/button_bg_skills.png",
      logoImageAsset: "assets/img/logo_skills_big.png",
      subtitle: "Hard & Soft",
      accentFilterColor: AppColors.ContentDarkBlue,
      content: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WorkExpTimeline(),
              Spacer(),
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
          ),
    );
  }

  Widget _createBioInfoPage() {
    return BaseInfoPage(
      title: "BIO",
      mainImageAsset: "assets/img/button_bg_bio.png",
      logoImageAsset: "assets/img/logo_bio_big.png",
      accentFilterColor: AppColors.ContentLightBlue,
      subtitle: "On Earth since 1994",
      content: TextSubtitle(
        text: "Content",
      ),
    );
  }

  Widget _createArtInfoPage() {
    return BaseInfoPage(
      title: "ART",
      mainImageAsset: "assets/img/button_bg_art.png",
      logoImageAsset: "assets/img/logo_art_big.png",
      isScrollable: false,
      isPaddingEnabled: false,
      accentFilterColor: AppColors.ContentLightYellow,
      content: ImageGallery(
        accentFilterColor: AppColors.ContentLightYellow,
        imagesResList: [
        ImageModel(
            resourcePath: "assets/img/button_bg_bio.png",
            title: "Cube 1",
            description: "Description 1"),
        ImageModel(
            resourcePath: "assets/img/button_bg_skills.png",
            title: "Cube 2",
            description: "Description 2"),
        ImageModel(
            resourcePath: "assets/img/button_bg_contacts.png",
            title: "Cube 3",
            description: "Description 3"),
        ImageModel(
            resourcePath: "assets/img/button_bg_art.png",
            title: "Cube 4",
            description: "Description 4"),
        ImageModel(
            resourcePath: "assets/img/button_bg_bio.png",
            title: "Cube 5",
            description: "Description 5"),
      ]),
    );
  }

  Widget _createContactInfoPage() {
    return BaseInfoPage(
      title: "CNCT",
      mainImageAsset: "assets/img/button_bg_contacts.png",
      logoImageAsset: "assets/img/logo_contacts_big.png",
      accentFilterColor: AppColors.ContentLightRed,
      subtitle: "Here you can find me",
      content: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SocialButton(
                imageUrl:
                    "https://static-00.iconduck.com/assets.00/gmail-icon-512x511-fih5xfbp.png",
                redirectUrl: "mailto:greyson.dean@email.com",
                enableStartPadding: false,
              ),
              SocialButton(
                imageUrl:
                    "https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png",
                redirectUrl: "https://github.com/GreyLabsDev",
              ),
              SocialButton(
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXwDJB5CoM0AwKPRHbg4NYNzP6nNBWJ6a1E_MwbkTlDby2KG6lOfoDiL23AcMUuGy05MI&usqp=CAU",
                redirectUrl: "https://www.linkedin.com/in/sergey-sh/",
              ),
              SocialButton(
                imageUrl:
                    "http://store-images.s-microsoft.com/image/apps.31997.13510798887167234.6cd52261-a276-49cf-9b6b-9ef8491fb799.30e70ce4-33c5-43d6-9af1-491fe4679377",
                redirectUrl: "https://www.instagram.com/sergey.shr/",
              ),
              SocialButton(
                imageUrl:
                    "https://cdn-icons-png.flaticon.com/512/124/124021.png",
                redirectUrl: "https://twitter.com/sergey_shr",
              ),
              SocialButton(
                imageUrl:
                    "https://cdn-icons-png.flaticon.com/512/5968/5968666.png",
                redirectUrl: "https://www.artstation.com/threeactions",
              ),
              SocialButton(
                imageUrl:
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Spotify_App_Logo.svg/2048px-Spotify_App_Logo.svg.png",
                redirectUrl:
                    "https://open.spotify.com/track/3NHfDEuRhrnpWN5hj5xRhr?si=NoxU-5qfSKebRbE7nXMALw",
              )
            ],
          ),
        ],
      ),
    );
  }
}
