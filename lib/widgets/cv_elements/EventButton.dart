import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher_string.dart';

class EventButton extends StatefulWidget {
  final String imageAsset;
  final String url;

  const EventButton({
    super.key,
    required this.imageAsset,
    required this.url,
  });

  @override
  EventButtonState createState() {
    return EventButtonState(
      imageAsset: imageAsset,
      url: url,
    );
  }
}

class EventButtonState extends State {
  final String imageAsset;
  final String url;

  bool _isHovered = false;

  EventButtonState({
    required this.imageAsset,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {_handleRedirect(url)},
      onHover: (value) {
        setState(() {
          _isHovered = value;
        });
      },
      child: SizedBox(
        child: Stack(children: [
          Image.asset(
            imageAsset,
            width: 140.0,
            height: 50.0,
            fit: BoxFit.fill,
          ),
          AnimatedOpacity(
            opacity: _isHovered ? 0.0 : 0.3,
            duration: Duration(microseconds: 250),
            child: Container(
            width: 140.0,
            height: 50.0,
            color: Colors.black,
          ),
          )
        ]),
      ),
    );
  }

  void _handleRedirect(String redirectUrl) async {
    if (await canLaunchUrlString(redirectUrl)) {
      await launchUrlString(redirectUrl);
    }
  }
}