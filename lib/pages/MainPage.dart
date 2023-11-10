import 'package:flutter/material.dart';
import 'package:threeactions_area/pages/MusicReleasesPage.dart';
import 'package:threeactions_area/widgets/base/SocialButton.dart';
import 'package:threeactions_area/widgets/base/TextTitle.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/base/TextContent.dart';
import '../widgets/base/TextSubtitle.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            ColorFiltered(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.4), BlendMode.dstATop),
                child: Image.network(
                  "https://raw.githubusercontent.com/GreyLabsDev/ThreeactionsArea/main/img/bg_main.png",
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  filterQuality: FilterQuality.low,
                )),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
              padding: EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextTitle(text: "Sergey.Shr"),
                  SizedBox(
                    height: 16.0,
                  ),
                  TextSubtitle(text: "Android developer, Flutter enthusiast"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        redirectUrl: "https://open.spotify.com/track/3NHfDEuRhrnpWN5hj5xRhr?si=NoxU-5qfSKebRbE7nXMALw",
                      )
                    ],
                  ),
                  SizedBox(height: 16.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          _launchMailClient();
                        },
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            side: BorderSide(
                                width: 1.0,
                                color: Colors.amber,
                                style: BorderStyle.solid)),
                        child: TextSubtitle(text: "Email me"),
                      ),
                      SizedBox(width: 8.0,),
                      OutlinedButton(
                        onPressed: () {
                          _openMusicPage(context);
                        },
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            side: BorderSide(
                                width: 1.0,
                                color: Colors.amber,
                                style: BorderStyle.solid)),
                        child: TextSubtitle(text: "My music releases"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  TextSubtitle(text: "Professional"),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextContent(
                    text: "Android developer since 2018.\nEx cybersecurity analyst (2016-2018)\n-Understanding difference between B2B & B2C projects\n-Architecture fist\n-Product and custom development\n-UX/UI is better than early release date\n-If you want smth custom - you`ll get it\n-Scale from one package to dozens of modules",
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextSubtitle(text: "Additional skills"),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextContent(
                    text: "-Python\n-Flutter/Dart\n-Figma",
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextSubtitle(text: "Personal"),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextContent(
                    text: "-Love making digital art\n-Music production is my main hobby\n-Learning new programming languages\n-Airsofter\n-Gamer\n-Good person",
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                ],
              ),
            ),
            ),
          ],
        ));
  }

  void _openMusicPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MusicReleasePage(),
      ),
    );
  }

  void _launchMailClient() async {
    const mailUrl = 'mailto:greyson.dean@gmail.com';
    if (await canLaunch(mailUrl)) {
      await launch(mailUrl);
    }
  }
}
