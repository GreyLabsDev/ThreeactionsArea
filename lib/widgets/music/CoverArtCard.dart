import 'package:flutter/material.dart';

class CoverArtCard extends StatelessWidget {
  String imageUrl;
  CoverArtCard({this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.network(
        imageUrl,
        height: 350.0,
        width: 350.0,
      ),
    );
  }
}
