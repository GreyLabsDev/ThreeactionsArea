import 'package:flutter/cupertino.dart';
import '../../resources/Resources.dart';

class TextSubtitle extends StatelessWidget {
  final String text;
  Color textColor = AppColors.ContentWhite;

  TextSubtitle({super.key, required this.text, this.textColor = AppColors.ContentWhite});

  @override
  Widget build(BuildContext context) {
    return (
      Text(text, style: TextStylesContent.Subtitle.copyWith(
        color: textColor
      ),)
    );
  }

}