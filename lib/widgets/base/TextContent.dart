import 'package:flutter/cupertino.dart';

import '../../resources/Resources.dart';

class TextContent extends StatelessWidget {
  final String text;

  const TextContent({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return (
      Text(text, style: TextStylesContent.Content,)
    );
  }

}