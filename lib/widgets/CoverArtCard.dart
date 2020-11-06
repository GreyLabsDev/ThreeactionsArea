import 'package:flutter/material.dart';

class CoverArtCard extends StatelessWidget {
  String imageUrl;
  CoverArtCard({this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 120.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageUrl),
        ),
        borderRadius: BorderRadius.all(Radius.circular(38.0)),
      ),
    );
  }
}
