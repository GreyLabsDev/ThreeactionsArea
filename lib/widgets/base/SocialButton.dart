import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButton extends StatelessWidget {
  final String imageUrl;
  final String redirectUrl;

  const SocialButton({Key key, this.imageUrl, this.redirectUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _handleRedirect(redirectUrl);
      },
      child: Container(
        width: 64.0,
        height: 64.0,
        padding: EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.network(imageUrl),
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