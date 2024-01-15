import 'package:flutter/widgets.dart';

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
