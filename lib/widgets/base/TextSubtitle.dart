import 'package:flutter/cupertino.dart';
import '../../resources/Resources.dart';

class TextSubtitle extends StatelessWidget {
  final String text;

  const TextSubtitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return (
      Text(text, style: TextStylesContent.Subtitle,)
    );
  }

}