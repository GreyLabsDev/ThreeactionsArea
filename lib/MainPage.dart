import 'package:flutter/material.dart';
import 'package:threeactions_area/resources/Resources.dart';
import 'package:threeactions_area/widgets/CoverArtCard.dart';
import 'package:threeactions_area/widgets/MusicServiceCard.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            CoverArtCard(
              imageUrl:
                  "https://raw.githubusercontent.com/GreyLabsDev/ThreeactionsArea/main/img/cover_art.png",
            ),
            SizedBox(height: 16.0),
            Text("UNUSUAL", style: Resources.textStyleTitle),
            SizedBox(height: 6.0),
            Text("by Threeactions", style: Resources.textStyleTitle),
            SizedBox(height: 16.0),
            MusicServiceCard(
              title: "Spotify",
              iconUrl:
                  "https://raw.githubusercontent.com/GreyLabsDev/ThreeactionsArea/main/img/icon_spotify.png",
            ),
            SizedBox(height: 8.0),
            MusicServiceCard(
              title: "Apple Music",
              iconUrl:
                  "https://raw.githubusercontent.com/GreyLabsDev/ThreeactionsArea/main/img/cover_art.png",
            ),
            SizedBox(height: 8.0),
            MusicServiceCard(
              title: "Yandex Music",
              iconUrl:
                  "https://raw.githubusercontent.com/GreyLabsDev/ThreeactionsArea/main/img/cover_art.png",
            ),
            SizedBox(height: 8.0),
            MusicServiceCard(
              title: "Yandex Music",
              iconUrl:
                  "https://raw.githubusercontent.com/GreyLabsDev/ThreeactionsArea/main/img/cover_art.png",
            ),
            SizedBox(height: 8.0),
            MusicServiceCard(
              title: "Yandex Music",
              iconUrl:
                  "https://raw.githubusercontent.com/GreyLabsDev/ThreeactionsArea/main/img/cover_art.png",
            ),
          ],
        ),
      )),
    );
  }
}
