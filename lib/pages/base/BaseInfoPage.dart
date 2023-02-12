import 'package:flutter/material.dart';
import 'package:threeactions_area/widgets/base/TextTitle.dart';
import 'package:threeactions_area/widgets/base/TextTitleBig.dart';

class BaseInfoPage extends StatelessWidget {
  final String title;
  final String mainImageAsset;
  final String logoImageAsset;
  final Widget content;

  const BaseInfoPage(
      {Key key,
      @required this.title,
      @required this.mainImageAsset,
      @required this.logoImageAsset,
      @required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 380.0,
            padding: EdgeInsets.only(left: 32.0, top: 32.0, right: 32.0, bottom: 96.0),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(mainImageAsset),
              fit: BoxFit.cover,
            )),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(logoImageAsset),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: TextTitleBig(
                    text: title,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topLeft,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.all(32.0),
                  child: content,
                )
              )
            ),
          )
        ],
      ),
    );
  }
}
