import 'package:flutter/material.dart';
import 'package:threeactions_area/widgets/base/AnimatedLogo.dart';
import 'package:threeactions_area/widgets/base/TextSubtitle.dart';

class PageButton extends StatefulWidget {
  final int number;
  final String title;
  final String bgImageAsset;
  final String logoBaseImageAsset;
  final String logoMovingPartImageAssetTop;
  final String logoMovingPartImageAssetBottom;
  double logoPartsExtraPadding = 0.0;

  PageButton(
      {super.key,
      required this.number,
      required this.title,
      required this.bgImageAsset,
      required this.logoBaseImageAsset,
      required this.logoMovingPartImageAssetTop,
      required this.logoMovingPartImageAssetBottom,
      this.logoPartsExtraPadding = 0.0});

  @override
  PageButtonState createState() {
    return PageButtonState(
        number,
        title,
        bgImageAsset,
        logoBaseImageAsset,
        logoMovingPartImageAssetTop,
        logoMovingPartImageAssetBottom,
        logoPartsExtraPadding);
  }
}

class PageButtonState extends State with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation opacityAcnimation;
  final GlobalKey<AnimatedLogoState> _logoStateKey = GlobalKey();

  final int number;
  final String title;
  final String bgImageAsset;
  final String logoBaseImageAsset;
  final String logoMovingPartImageAssetTop;
  final String logoMovingPartImageAssetBottom;
  double logoPartsExtraPadding = 0.0;

  PageButtonState(
      this.number,
      this.title,
      this.bgImageAsset,
      this.logoBaseImageAsset,
      this.logoMovingPartImageAssetTop,
      this.logoMovingPartImageAssetBottom,
      [this.logoPartsExtraPadding = 0.0]);

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200))
          ..addListener(() {
            setState(() {});
          });
    opacityAcnimation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: () {},
      onHover: (isHovered) {
        if (isHovered) {
          _animateShow();
          _logoStateKey.currentState?.animate();
        } else {
          _animateHide();
          _logoStateKey.currentState?.animate();
        }
      },
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(bgImageAsset),
                fit: BoxFit.cover,
                opacity: opacityAcnimation.value)),
        padding:
            EdgeInsets.only(left: 32.0, right: 32.0, bottom: 32.0, top: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextSubtitle(
                text: "$number",
              ),
            ),
            AnimatedLogo(
                key: _logoStateKey,
                baseImageAsset: logoBaseImageAsset,
                movingPartImageAssetTop: logoMovingPartImageAssetTop,
                movingPartImageAssetBottom: logoMovingPartImageAssetBottom,
                extraPadding: logoPartsExtraPadding),
            TextSubtitle(
              text: title,
            ),
          ],
        ),
      ),
    ));
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void _animateShow() {
    controller.forward();
  }

  void _animateHide() {
    controller.reverse();
  }
}