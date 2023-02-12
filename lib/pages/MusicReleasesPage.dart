import 'package:flutter/material.dart';
import 'package:threeactions_area/resources/Resources.dart';
import 'package:threeactions_area/widgets/music/CoverArtCard.dart';
import 'package:threeactions_area/widgets/music/MusicServiceCard.dart';

class MusicReleasePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MusicReleasePageState();
}

class MusicReleasePageState extends State<MusicReleasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.network(
          "https://raw.githubusercontent.com/GreyLabsDev/ThreeactionsArea/main/img/web_bg_cover.jpg",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.black45,
        ),
        Center(
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
              Text("UNUSUAL", style: TextStylesMusicRelease.Title),
              Text("by Threeactions", style: TextStylesMusicRelease.Title),
              SizedBox(height: 16.0),
              MusicServiceCard(
                title: "Yandex Music",
                redirectUrl:
                    "https://music.yandex.ru/album/12623767/track/72993620",
                iconUrl:
                    "https://raw.githubusercontent.com/GreyLabsDev/ThreeactionsArea/main/img/icon_yandex.png",
              ),
              SizedBox(height: 8.0),
              MusicServiceCard(
                title: "Apple Music",
                redirectUrl:
                    "https://music.apple.com/us/album/unusual/1538029037?i=1538029038",
                iconUrl:
                    "https://raw.githubusercontent.com/GreyLabsDev/ThreeactionsArea/main/img/icon_apple_music.png",
              ),
              SizedBox(height: 8.0),
              MusicServiceCard(
                title: "Spotify",
                redirectUrl:
                    "https://open.spotify.com/track/3NHfDEuRhrnpWN5hj5xRhr?si=NoxU-5qfSKebRbE7nXMALw",
                iconUrl:
                    "https://raw.githubusercontent.com/GreyLabsDev/ThreeactionsArea/main/img/icon_spotify.png",
              ),
              SizedBox(height: 8.0),
              MusicServiceCard(
                title: "VK Music",
                redirectUrl:
                    "https://vk.com/music/album/-2000248526_9248526_a1b169b1123ce6a99c",
                iconUrl:
                    "https://raw.githubusercontent.com/GreyLabsDev/ThreeactionsArea/main/img/icon_vk.png",
              ),
              SizedBox(height: 8.0),
              MusicServiceCard(
                title: "Youtube Music",
                redirectUrl:
                    "https://music.youtube.com/watch?v=RGL1Rf1_EXw&feature=share",
                iconUrl:
                    "https://raw.githubusercontent.com/GreyLabsDev/ThreeactionsArea/main/img/icon_youtube_music.png",
              ),
              SizedBox(height: 24.0),
            ],
          ),
        )),
      ],
    ));
  }
}
