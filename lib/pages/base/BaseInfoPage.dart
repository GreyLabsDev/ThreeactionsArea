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
  bool isAllPaddingEnabled;
  bool isHorizontalPaddingEabled;
  String? subtitle;
  Color? accentFilterColor;
  Color? bgColor;

  BaseInfoPage(
      {super.key,
      required this.title,
      required this.mainImageAsset,
      required this.logoImageAsset,
      required this.content,
      this.isScrollable = true,
      this.isAllPaddingEnabled = true,
      this.isHorizontalPaddingEabled = false,
      this.subtitle,
      this.accentFilterColor,
      this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor ?? Colors.black,
      body: _buildAdaptiveBody(
          title,
          mainImageAsset,
          logoImageAsset,
          content,
          isScrollable,
          isAllPaddingEnabled,
          isHorizontalPaddingEabled,
          subtitle,
          accentFilterColor),
    );
  }

  // // print("AHTUNG = ${constraints.maxWidth}"); 365 width triggering vertical layout

  Widget _buildAdaptiveBody(
      String title,
      String mainImageAsset,
      String logoImageAsset,
      Widget content,
      bool isScrollable,
      bool isAllPaddingEnabled,
      bool isHorizontalPaddingEabled,
      String? subtitle,
      Color? accentFilterColorx) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      bool isNeedToSwitchVertical = constraints.maxWidth <= 990;

      if (isNeedToSwitchVertical) {
        print("Changed to vertical");
        return Stack(
          children: [
            Image.asset(
              mainImageAsset,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
              fit: BoxFit.cover,
              color: Colors.black54,
              colorBlendMode: BlendMode.darken,
            ),
            _buildMainContent(
                content, isNeedToSwitchVertical, isHorizontalPaddingEabled)
          ],
        );
      } else {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200.0,
              padding: EdgeInsets.only(
                  left: 32.0, top: 32.0, right: 32.0, bottom: 96.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(mainImageAsset),
                fit: BoxFit.cover,
              )),
              child: Align(
                  alignment: Alignment.center,
                  child: accentFilterColor != null
                      ? ColorFiltered(
                          colorFilter: ColorFilter.mode(
                              accentFilterColor!, BlendMode.srcATop),
                          child: Image.asset(logoImageAsset),
                        )
                      : Image.asset(logoImageAsset)),
            ),
            Flexible(
              flex: 1,
              child: Container(
                  alignment: Alignment.topLeft,
                  child: _buildMainContent(content, isNeedToSwitchVertical,
                      isHorizontalPaddingEabled)),
            ),
            Transform.flip(
              flipX: true,
              child: Container(
                  width: 200.0,
                  padding: EdgeInsets.only(
                      left: 32.0, top: 32.0, right: 32.0, bottom: 96.0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(mainImageAsset),
                    fit: BoxFit.cover,
                  )),
                  child: Align(
                      alignment: Alignment.center,
                      child: accentFilterColor != null
                          ? ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                  accentFilterColor!, BlendMode.srcATop),
                              child: Image.asset(logoImageAsset),
                            )
                          : Image.asset(logoImageAsset))),
            ),
          ],
        );
      }
    });
  }

  Widget _buildAdaptiveSubtitle(
      bool isAllPaddingEnabled,
      bool isNeedToSwitchVertical,
      String logoImageAsset,
      Color? accentFilterColor) {
    Widget bgImage = Padding(
      padding: EdgeInsets.all(16.0),
      child: Opacity(
        opacity: 0.7,
        child: Image.asset(
          logoImageAsset,
          height: 160.0,
        ),
      ),
    );

    return Align(
      alignment: Alignment.bottomCenter,
      child: isNeedToSwitchVertical
          ? Stack(
              alignment: AlignmentDirectional.center,
              children: [
                RotatedBox(
                  quarterTurns: 1,
                  child: accentFilterColor != null
                      ? ColorFiltered(
                          colorFilter: ColorFilter.mode(
                              accentFilterColor, BlendMode.srcATop),
                          child: bgImage,
                        )
                      : bgImage,
                ),
                isAllPaddingEnabled
                    ? Padding(
                        padding: EdgeInsets.only(top: 18.0, bottom: 18.0),
                        child: TextTitle(
                          text: subtitle!,
                          textColor:
                              accentFilterColor ?? AppColors.ContentWhite,
                        ),
                      )
                    : TextTitle(
                        text: subtitle!,
                        textColor: accentFilterColor ?? AppColors.ContentWhite,
                      ),
              ],
            )
          : isAllPaddingEnabled
              ? Padding(
                  padding: EdgeInsets.only(top: 18.0, bottom: 18.0),
                  child: TextTitleBig(
                    text: subtitle!,
                    textColor: accentFilterColor ?? AppColors.ContentWhite,
                  ),
                )
              : TextTitleBig(
                  text: subtitle!,
                  textColor: accentFilterColor ?? AppColors.ContentWhite,
                ),
    );
  }

  Widget _buildMainContent(Widget content, bool isNeedToSwitchVertical,
      bool isHorizontalPaddingEabled) {
    if (subtitle != null) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildAdaptiveSubtitle(isAllPaddingEnabled,
              isNeedToSwitchVertical, logoImageAsset, accentFilterColor),
          Flexible(
              child: _buildContentContainer(content))
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
    double horizontalPadding = isHorizontalPaddingEabled ? 32.0 : 0.0;
    double verticalPadding = isAllPaddingEnabled ? 32.0 : 0.0;
    EdgeInsets padding = EdgeInsets.only(
      top: verticalPadding,
      left: horizontalPadding,
      right: horizontalPadding,
      bottom: verticalPadding,
    );
    if (isAllPaddingEnabled || isHorizontalPaddingEabled) {
      return Padding(
        padding: padding,
        child: content,
      );
    } else {
      return content;
    }
  }
}
