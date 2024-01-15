import 'package:flutter/material.dart';
import 'package:threeactions_area/resources/Resources.dart';

class TextTitle extends StatelessWidget {
  final String text;

  const TextTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (
      Text(text, style: TextStylesContent.Title)
    );
  }

}