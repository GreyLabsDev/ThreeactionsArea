import 'package:flutter/cupertino.dart';

import '../../resources/Resources.dart';

class TextContentMin extends StatelessWidget {
  final String text;
  Color textColor = AppColors.ContentWhite;
  TextAlign textAlign = TextAlign.start;

  TextContentMin(
      {super.key,
      required this.text,
      this.textColor = AppColors.ContentWhite,
      this.textAlign = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return (Text(text,
        style: TextStylesContent.ContentMin.copyWith(color: textColor),
        textAlign: textAlign));
  }
}
