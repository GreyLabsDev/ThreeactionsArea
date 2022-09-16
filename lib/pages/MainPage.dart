import 'package:flutter/material.dart';
import 'package:threeactions_area/pages/MusicReleasesPage.dart';
import 'package:threeactions_area/widgets/base/SocialButton.dart';
import 'package:threeactions_area/widgets/base/TextTitle.dart';

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
            Padding(
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
                  SizedBox(
                    height: 16.0,
                  ),
                  TextContent(text: "You can find me here:"),
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
                      // SocialButton(
                      //   imageUrl:
                      //       "https://cdn3.iconfinder.com/data/icons/social-media-chamfered-corner/154/telegram-512.png",
                      //   redirectUrl: "https://t.me/sergey_shr",
                      // ),
                      SocialButton(
                        imageUrl:
                            "https://cdna.artstation.com/p/assets/images/images/047/850/148/large/arthur-deleye-artstation-logo.jpg?1648587486",
                        redirectUrl: "https://www.artstation.com/threeactions",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextContent(text: "or send email"),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextButton(
                    onPressed: () {
                      // _openMusicPage(context);
                    },
                    child: TextSubtitle(text: "email me"),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  TextButton(
                    onPressed: () {
                      _openMusicPage(context);
                    },
                    child: TextSubtitle(text: "TEST My music"),
                  )
                ],
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
}
