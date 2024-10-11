import 'package:flutter/material.dart';
import 'package:threeactions_area/resources/Resources.dart';

class TextContentBig extends StatelessWidget {
  final String text;
  Color textColor = AppColors.ContentWhite;
  TextAlign textAlign = TextAlign.start;

  TextContentBig(
      {super.key,
      required this.text,
      this.textColor = AppColors.ContentWhite,
      this.textAlign = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return (Text(
      text,
      style: TextStylesContent.ContentBig.copyWith(color: textColor),
      textAlign: textAlign,
    ));
  }
}