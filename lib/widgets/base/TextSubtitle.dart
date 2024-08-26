import 'package:flutter/cupertino.dart';
import '../../resources/Resources.dart';

class TextSubtitle extends StatelessWidget {
  final String text;
  Color textColor = AppColors.ContentWhite;
  TextAlign textAlign = TextAlign.start;

  TextSubtitle(
      {super.key,
      required this.text,
      this.textColor = AppColors.ContentWhite,
      this.textAlign = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return (Text(
      text,
      style: TextStylesContent.Subtitle.copyWith(color: textColor),
      textAlign: textAlign,
    ));
  }
}
