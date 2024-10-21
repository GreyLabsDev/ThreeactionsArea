import 'package:flutter/material.dart';
import 'package:threeactions_area/resources/Resources.dart';
import 'package:threeactions_area/widgets/base/TextTitle.dart';
import 'package:threeactions_area/widgets/base/TextTitleBig.dart';

class BaseInfoPage extends StatelessWidget {
  final String title;
  final String mainImageAsset;
  final String logoImageAsset;
  final Widget content;
  bool isScrollable;
  bool isPaddingEnabled;
  String? subtitle;
  Color? accentFilterColor;

  BaseInfoPage(
      {super.key,
      required this.title,
      required this.mainImageAsset,
      required this.logoImageAsset,
      required this.content,
      this.isScrollable = true,
      this.isPaddingEnabled = true,
      this.subtitle,
      this.accentFilterColor});

  @override
  Widget build(BuildContext context) {
    // TODO Adaptive feature - remove left-right side bg, 
    // and set this image as vertical fullscreen bg with
    // geometric logo on top (like in mobile version from Figma)
    // but with more dimmed brightness

    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 256.0,
            padding: EdgeInsets.only(
                left: 32.0, top: 32.0, right: 32.0, bottom: 96.0),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(mainImageAsset),
              fit: BoxFit.cover,
            )),
            child: Align(
                  alignment: Alignment.center,
                  child: accentFilterColor != null ? ColorFiltered(
                    colorFilter: ColorFilter.mode(accentFilterColor!, BlendMode.srcATop),
                    child: Image.asset(logoImageAsset),
                  ) :  Image.asset(logoImageAsset)
                ),
            // Stack(
            //   children: [
            //     Align(
            //       alignment: Alignment.center,
            //       child: accentFilterColor != null ? ColorFiltered(
            //         colorFilter: ColorFilter.mode(accentFilterColor!, BlendMode.srcATop),
            //         child: Image.asset(logoImageAsset),
            //       ) :  Image.asset(logoImageAsset)
            //     ),
            //     Align(
            //       alignment: Alignment.bottomCenter,
            //       child: TextTitleBig(
            //         text: title,
            //         textColor: accentFilterColor ?? AppColors.ContentWhite,
            //       ),
            //     )
            //   ],
            // ),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.topLeft,
                child: _buildMainContent(content)),
          ),
          Transform.flip(
            flipX: true,
            child: Container(
              width: 256.0,
              padding: EdgeInsets.only(
                  left: 32.0, top: 32.0, right: 32.0, bottom: 96.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(mainImageAsset),
                fit: BoxFit.cover,
              )),
              child: Align(
                  alignment: Alignment.center,
                  child: accentFilterColor != null ? ColorFiltered(
                    colorFilter: ColorFilter.mode(accentFilterColor!, BlendMode.srcATop),
                    child: Image.asset(logoImageAsset),
                  ) :  Image.asset(logoImageAsset)
                )
            //   Stack( children: [
            //     Align(
            //       alignment: Alignment.center,
            //       child: accentFilterColor != null ? ColorFiltered(
            //         colorFilter: ColorFilter.mode(accentFilterColor!, BlendMode.srcATop),
            //         child: Image.asset(logoImageAsset),
            //       ) :  Image.asset(logoImageAsset)
            //     ),
            //     Align(
            //       alignment: Alignment.bottomCenter,
            //       child: TextTitleBig(
            //         text: title,
            //         textColor: accentFilterColor ?? AppColors.ContentWhite,
            //       ),
            //     )
            //   ],
            // ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainContent(Widget content) {
    if (subtitle != null) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: isPaddingEnabled
                ? Padding(
                    padding: EdgeInsets.only(top: 64.0),
                    child: TextTitleBig(
                      text: subtitle!,
                      textColor: accentFilterColor ?? AppColors.ContentWhite,
                    ),
                  )
                : TextTitleBig(
                    text: subtitle!,
                    textColor: accentFilterColor ?? AppColors.ContentWhite,
                  ),
          ),
          Flexible(child: _buildContentContainer(content))
        ],
      );
    } else {
      return _buildContentContainer(content);
    }
  }

  Widget _buildContentContainer(Widget content) {
    if (isScrollable) {
      return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: _buildContentByPadding(content));
    } else {
      return _buildContentByPadding(content);
    }
  }

  Widget _buildContentByPadding(Widget content) {
    if (isPaddingEnabled) {
      return Padding(
        padding: EdgeInsets.all(32.0),
        child: content,
      );
    } else {
      return content;
    }
  }
}
