import 'package:flutter/material.dart';
import 'package:threeactions_area/resources/Resources.dart';
import 'package:url_launcher/url_launcher.dart';

class MusicServiceCard extends StatelessWidget {
  String title;
  String iconUrl;
  String redirectUrl;

  MusicServiceCard({required this.title, required this.iconUrl, required this.redirectUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _handleRedirect(redirectUrl);
      },
      child: Container(
        width: 350.0,
        padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
        decoration: BoxDecoration(
            color: Colors.black54, borderRadius: BorderRadius.circular(16.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 24.0,
            ),
            MusicServiceLogo(imageUrl: iconUrl),
            SizedBox(
              width: 16.0,
            ),
            Text(
              title,
              style: TextStylesMusicRelease.TitleSmall,
            ),
            SizedBox(
              width: 24.0,
            ),
          ],
        ),
      ),
    );
  }

  void _handleRedirect(String redirectUrl) async {
    if (await canLaunch(redirectUrl)) {
      await launch(redirectUrl);
    }
  }
}

class MusicServiceLogo extends StatelessWidget {
  String imageUrl;
  MusicServiceLogo({required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.network(
        imageUrl,
        height: 40.0,
        width: 40.0,
      ),
    );
  }
}
