import 'package:flutter/material.dart';
import 'package:threeactions_area/widgets/base/TextSubtitle.dart';
import 'package:threeactions_area/widgets/base/TextTitle.dart';

class TestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TestPageState();
}

class TestPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 64,
                ),
                TextTitle(text: "S.SH"),
                SizedBox(
                  width: 64,
                ),
                TextTitle(
                    text:
                        "android developer & flutter enthusiast & speaker"),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  PageButton(
                    number: 1,
                    title: "SKLS",
                    bgImageAsset: "assets/img/button_bg_skills.png",
                    logoBaseImageAsset: "assets/img/logo_skills_base.png",
                    logoMovingPartImageAssetTop:
                        "assets/img/logo_skills_part.png",
                    logoMovingPartImageAssetBottom:
                        "assets/img/logo_skills_part.png",
                  ),
                  VerticalDivider(
                    width: 2.0,
                    color: Colors.white,
                  ),
                  PageButton(
                    number: 2,
                    title: "BIO",
                    bgImageAsset: "assets/img/button_bg_bio.png",
                    logoBaseImageAsset: "assets/img/logo_bio_base.png",
                    logoMovingPartImageAssetTop: "assets/img/logo_bio_part.png",
                    logoMovingPartImageAssetBottom:
                        "assets/img/logo_bio_part.png",
                    logoPartsExtraPadding: 28.0,
                  ),
                  VerticalDivider(
                    width: 2.0,
                    color: Colors.white,
                  ),
                  PageButton(
                    number: 3,
                    title: "ART",
                    bgImageAsset: "assets/img/button_bg_art.png",
                    logoBaseImageAsset: "assets/img/logo_art_base.png",
                    logoMovingPartImageAssetTop:
                        "assets/img/logo_art_part_top.png",
                    logoMovingPartImageAssetBottom:
                        "assets/img/logo_art_part_bottom.png",
                  ),
                  VerticalDivider(
                    width: 2.0,
                    color: Colors.white,
                  ),
                  PageButton(
                    number: 4,
                    title: "CNCT",
                    bgImageAsset: "assets/img/button_bg_contacts.png",
                    logoBaseImageAsset: "assets/img/logo_contacts_base.png",
                    logoMovingPartImageAssetTop:
                        "assets/img/logo_contacts_part_top.png",
                    logoMovingPartImageAssetBottom:
                        "assets/img/logo_contacts_part_bottom.png",
                    logoPartsExtraPadding: 28.0,
                  ),
                  VerticalDivider(
                    width: 2.0,
                    color: Colors.white,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class PageButton extends StatefulWidget {
  final int number;
  final String title;
  final String bgImageAsset;
  final String logoBaseImageAsset;
  final String logoMovingPartImageAssetTop;
  final String logoMovingPartImageAssetBottom;
  double logoPartsExtraPadding = 0.0;

  PageButton(
      {Key key,
      @required this.number,
      @required this.title,
      @required this.bgImageAsset,
      @required this.logoBaseImageAsset,
      @required this.logoMovingPartImageAssetTop,
      @required this.logoMovingPartImageAssetBottom,
      this.logoPartsExtraPadding})
      : super(key: key);

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
  AnimationController controller;
  Animation opacityAcnimation;
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
          _logoStateKey.currentState.animate();
        } else {
          _animateHide();
          _logoStateKey.currentState.animate();
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

class AnimatedLogo extends StatefulWidget {
  final String baseImageAsset;
  final String movingPartImageAssetTop;
  final String movingPartImageAssetBottom;
  double extraPadding = 0;

  AnimatedLogo(
      {@required Key key,
      @required this.baseImageAsset,
      @required this.movingPartImageAssetTop,
      @required this.movingPartImageAssetBottom,
      this.extraPadding})
      : super(key: key);

  @override
  AnimatedLogoState createState() {
    return AnimatedLogoState(baseImageAsset, movingPartImageAssetTop,
        movingPartImageAssetBottom, extraPadding ?? 0);
  }
}

class AnimatedLogoState extends State with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation movementAnimation;
  bool isExpanded = false;

  final String baseImageAsset;
  final String movingPartImageAssetTop;
  final String movingPartImageAssetBottom;
  double extraPadding = 0.0;

  AnimatedLogoState(this.baseImageAsset, this.movingPartImageAssetTop,
      this.movingPartImageAssetBottom, this.extraPadding);

  void animate() {
    if (isExpanded) {
      controller.reverse();
    } else {
      controller.forward();
    }
    isExpanded = !isExpanded;
  }

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200))
          ..addListener(() {
            setState(() {});
          });

    movementAnimation = Tween<double>(
            begin: 46.0 + extraPadding ?? 0, end: 92.0 + extraPadding ?? 0)
        .chain(CurveTween(curve: Curves.easeInOutQuint))
        .animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(baseImageAsset),
        Padding(
          padding: EdgeInsets.only(bottom: movementAnimation.value),
          child: Image.asset(movingPartImageAssetTop),
        ),
        Padding(
          padding: EdgeInsets.only(top: movementAnimation.value),
          child: Image.asset(movingPartImageAssetBottom),
        )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
