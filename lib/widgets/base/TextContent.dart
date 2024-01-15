import 'package:flutter/cupertino.dart';

import '../../resources/Resources.dart';

class TextContent extends StatelessWidget {
  final String text;

  const TextContent({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (
      Text(text, style: TextStylesContent.Content,)
    );
  }

}