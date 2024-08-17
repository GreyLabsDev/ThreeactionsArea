import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/Resources.dart';

class TextContent extends StatelessWidget {
  final String text;
  Color textColor = AppColors.ContentWhite;

  TextContent({this.text = "", this.textColor = AppColors.ContentWhite});

  @override
  Widget build(BuildContext context) {
    return (
      Text(text, style: TextStylesContent.Content.copyWith(
        color: textColor
      ))
    );
  }

}