import 'package:flutter/material.dart';
import 'package:threeactions_area/resources/Resources.dart';

class TextTitleBig extends StatelessWidget {
  final String text;
  Color textColor = AppColors.ContentWhite;
  TextAlign textAlign = TextAlign.start;

  TextTitleBig(
      {super.key,
      required this.text,
      this.textColor = AppColors.ContentWhite,
      this.textAlign = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return (Text(
      text,
      style: TextStylesContent.TitleBig.copyWith(color: textColor),
      textAlign: textAlign,
    ));
  }
}
