import 'package:flutter/material.dart';
import 'package:threeactions_area/resources/Resources.dart';

class MusicServiceCard extends StatelessWidget {
  String title;
  String iconUrl;
  String redirectUrl;

  MusicServiceCard({this.title, this.iconUrl, this.redirectUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
      decoration: BoxDecoration(
          color: Colors.black54, borderRadius: BorderRadius.circular(16.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MusicServiceLogo(imageUrl: iconUrl),
          SizedBox(
            width: 16.0,
          ),
          Text(
            title,
            style: Resources.textStyleSmallTitle,
          )
        ],
      ),
    );
  }
}

class MusicServiceLogo extends StatelessWidget {
  String imageUrl;
  MusicServiceLogo({this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.network(
        imageUrl,
        height: 50.0,
        width: 50.0,
      ),
    );
  }
}
