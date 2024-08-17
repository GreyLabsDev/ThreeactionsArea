import 'package:flutter/material.dart';
import 'package:threeactions_area/resources/Resources.dart';

class TextTitle extends StatelessWidget {
  final String text;
  Color textColor = AppColors.ContentWhite;

  TextTitle({super.key, required this.text, this.textColor = AppColors.ContentWhite});

  @override
  Widget build(BuildContext context) {
    return (
      Text(text, style: TextStylesContent.Title.copyWith(
        color: textColor
      ))
    );
  }

}