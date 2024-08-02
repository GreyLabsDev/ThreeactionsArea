import 'package:flutter/cupertino.dart';

import '../../resources/Resources.dart';

class TextContentMin extends StatelessWidget {
  final String text;

  const TextContentMin({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return (
      Text(text, style: TextStylesContent.ContentMin,)
    );
  }

}