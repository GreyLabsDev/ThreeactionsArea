import 'package:flutter/material.dart';
import 'package:threeactions_area/widgets/base/TextContent.dart';
import 'package:threeactions_area/widgets/base/TextSubtitle.dart';
import 'package:threeactions_area/widgets/base/TextTitle.dart';

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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 64,
                ),
                TextTitle(text: "S.SH"),
                SizedBox(
                  width: 64,
                ),
                TextTitle(
                    text: "android developer & flutter enthusiast & speaker"),
              ],
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
                        {_openInfoPage(context, _createSkillsInfoPage())},
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
                    logoMovingPartImageAssetTop: "assets/img/logo_bio_part.png",
                    logoMovingPartImageAssetBottom:
                        "assets/img/logo_bio_part.png",
                    logoPartsExtraPadding: 28.0,
                    onClickedAction: () =>
                        {_openInfoPage(context, _createBioInfoPage())},
                  ),
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
                        {_openInfoPage(context, _createArtInfoPage())},
                  ),
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
                        {_openInfoPage(context, _createContactInfoPage())},
                  ),
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
      content: TextTitle(
        text: "Some content",
      ),
    );
  }

  Widget _createBioInfoPage() {
    return BaseInfoPage(
      title: "BIO",
      mainImageAsset: "assets/img/button_bg_bio.png",
      logoImageAsset: "assets/img/logo_bio_big.png",
      content: TextTitle(
        text: "Some content",
      ),
    );
  }

  Widget _createArtInfoPage() {
    return BaseInfoPage(
      title: "ART",
      mainImageAsset: "assets/img/button_bg_art.png",
      logoImageAsset: "assets/img/logo_art_big.png",
      content: TextTitle(
        text: "Some content",
      ),
    );
  }

  Widget _createContactInfoPage() {
    return BaseInfoPage(
      title: "CNCT",
      mainImageAsset: "assets/img/button_bg_contacts.png",
      logoImageAsset: "assets/img/logo_contacts_big.png",
      content: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextContent(text: "Me on social networks",),
          SizedBox(height: 8.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SocialButton(
                imageUrl: "https://static-00.iconduck.com/assets.00/gmail-icon-512x511-fih5xfbp.png",
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
                    "https://cdna.artstation.com/p/assets/images/images/047/850/148/large/arthur-deleye-artstation-logo.jpg?1648587486",
                redirectUrl: "https://www.artstation.com/threeactions",
              ),
              SocialButton(
                imageUrl:
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Spotify_App_Logo.svg/2048px-Spotify_App_Logo.svg.png",
                redirectUrl:
                    "https://open.spotify.com/track/3NHfDEuRhrnpWN5hj5xRhr?si=NoxU-5qfSKebRbE7nXMALw",
              )
            ],
          )
        ],
      ),
    );
  }
}
