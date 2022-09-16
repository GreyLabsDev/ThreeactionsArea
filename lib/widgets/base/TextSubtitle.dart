import 'package:flutter/cupertino.dart';

import '../../resources/Resources.dart';

class TextSubtitle extends StatelessWidget {
  final String text;

  const TextSubtitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (
      Text(text, style: Resources.textStyleMainSubtitle,)
    );
  }

}