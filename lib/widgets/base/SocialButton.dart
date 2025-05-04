import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialButton extends StatelessWidget {
  final String imagePath;
  final String redirectUrl;
  String? svgAssetPath;
  var enableStartPadding = true;
  var isNetworkImage = true;

  SocialButton(
      {super.key,
      required this.imagePath,
      required this.redirectUrl,
      this.svgAssetPath,
      this.enableStartPadding = true,
      this.isNetworkImage = true});
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
            bottom: padding),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: _buildImage(),
        ),
      ),
    );
  }

  Widget _buildImage() {
    if (svgAssetPath != null) {
          return SvgPicture.asset(
            svgAssetPath!,
            semanticsLabel: 'Dart Logo',
          );
          } else {
            return isNetworkImage
              ? Image.network(imagePath)
              : Image.asset(imagePath);
          }
  }

  void _handleRedirect(String redirectUrl) async {
    if (await canLaunchUrlString(redirectUrl)) {
      await launchUrlString(redirectUrl);
    }
  }
}

class SocialButtonWithContent extends StatelessWidget {
  final String redirectUrl;
  final Widget child;
  var enableStartPadding = true;

  SocialButtonWithContent(
      {super.key,
      required this.redirectUrl,
      required this.child,
      this.enableStartPadding = true,});
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
            bottom: padding),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: child,
        ),
      ),
    );
  }

  void _handleRedirect(String redirectUrl) async {
    if (await canLaunchUrlString(redirectUrl)) {
      await launchUrlString(redirectUrl);
    }
  }

}