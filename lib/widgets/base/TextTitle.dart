import 'package:flutter/material.dart';
import 'package:threeactions_area/resources/Resources.dart';

class TextTitle extends StatelessWidget {
  final String text;

  const TextTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return (
      Text(text, style: TextStylesContent.Title)
    );
  }

}