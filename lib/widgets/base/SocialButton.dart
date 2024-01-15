import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButton extends StatelessWidget {
  final String imageUrl;
  final String redirectUrl;
  var enableStartPadding = true;

  const SocialButton({Key? key, required this.imageUrl, required this.redirectUrl}) : super(key: key);
  double padding = 8.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _handleRedirect(redirectUrl);
      },
      child: Container(
        width: 64.0,
        height: 64.0,
        padding: EdgeInsets.only(
            left: enableStartPadding ? padding : 0.0,
            top: padding,
            right: padding,
            bottom: padding
          ),
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
