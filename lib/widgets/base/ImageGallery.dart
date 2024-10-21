import 'dart:async';
import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:threeactions_area/resources/Resources.dart';
import 'package:threeactions_area/widgets/base/TextContent.dart';
import 'package:threeactions_area/widgets/base/TextTitle.dart';
import 'package:threeactions_area/widgets/base/TextTitleBig.dart';

class ImageModel {
  String resourcePath;
  String title;
  String description;
  String? goToUrl;

  ImageModel(
      {required this.resourcePath,
      required this.title,
      required this.description,
      this.goToUrl});
}

class ImageGallery extends StatefulWidget {
  final List<ImageModel> imagesResList;
  final Function(String?) onClickedAction;
  Color accentFilterColor = AppColors.ContentWhite;

  ImageGallery({
    super.key,
    required this.imagesResList,
    required this.onClickedAction,
    this.accentFilterColor = AppColors.ContentWhite,
  });

  @override
  State<StatefulWidget> createState() {
    return SimpleGalleryState(
        imagesResList: imagesResList,
        accentFilterColor: accentFilterColor,
        onClickedAction: onClickedAction);
  }
}

class SimpleGalleryState extends State with TickerProviderStateMixin {
  final List<ImageModel> imagesResList;
  final Function(String?) onClickedAction;
  final accentFilterColor;

  var widthsList = [];
  var hoveredIndex = -1;
  var baseWidth = 0.0;
  var lastMaxWidth = 0.0;

  List<AnimationController> controllers = [];
  List<AnimationController> fadeControllers = [];
  List<Animation<double>> opacityAcnimations = [];

  SimpleGalleryState(
      {required this.imagesResList,
      this.accentFilterColor,
      required this.onClickedAction});

  @override
  void initState() {
    super.initState();

    for (final (index, item) in imagesResList.indexed) {
      controllers.add(
        AnimationController(
            vsync: this,
            duration: Duration(milliseconds: 300),
            animationBehavior: AnimationBehavior.normal)
          ..addListener(() {
            setState(() {});
          }),
      );

      fadeControllers.add(
        AnimationController(
            vsync: this,
            duration: Duration(milliseconds: 500),
            reverseDuration: Duration(milliseconds: 100),
            animationBehavior: AnimationBehavior.normal)
          ..addListener(() {
            setState(() {});
          }),
      );
      opacityAcnimations
          .add(Tween<double>(begin: 0.0, end: 1.0).animate(fadeControllers[index]));
    }
  }

  List<Widget> _buildImageWidgets(BoxConstraints constraints) {
    List<Widget> widgets = [];
    imagesResList.forEachIndexed((index, element) {
      widgets.add(InkWell(
        onTap: () {},
        onHover: (isHovered) {
          _updateWidthsAndOpacity(isHovered, index);
        },
        child: Stack(
          children: [
            AnimatedContainer(
              height: constraints.maxHeight,
              width: widthsList[index],
              curve: Curves.fastOutSlowIn,
              duration: Durations.long1,
              child: InkWell(
                onTap: () {
                  log("CLICK - url = ${imagesResList[index].goToUrl}");
                  onClickedAction(imagesResList[index].goToUrl);
                },
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      imagesResList[index].resourcePath,
                      fit: BoxFit.cover,
                      height: constraints.maxHeight, //48 - external padding
                    ),
                    Opacity(
                      opacity: opacityAcnimations[index].value,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Spacer(),
                            Container(
                                color: AppColors.BgBlack45,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      SizedBox(
                                        height: 16.0,
                                      ),
                                      TextTitle(
                                        text: imagesResList[index].title,
                                        textColor: accentFilterColor,
                                        textAlign: TextAlign.center,
                                      ),
                                      TextContent(
                                        text: imagesResList[index].description,
                                        textColor: accentFilterColor,
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 32.0,
                                      )
                                    ],
                                  ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ));
    });

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (lastMaxWidth != constraints.maxWidth) {
        baseWidth = constraints.maxWidth / imagesResList.length;
        widthsList = imagesResList.map((e) => baseWidth).toList();
        lastMaxWidth = constraints.maxWidth;
      }

      return Container(
        child: Row(
          children: _buildImageWidgets(constraints),
        ),
      );
    });
  }

  Timer? delayedAppear;

  void _animateShow(int index) {
    controllers[index].forward();
    delayedAppear = Timer(Duration(milliseconds: 300), () {
      fadeControllers[index].forward();
    });
  }

  void _animateHide(int index) {
    delayedAppear?.cancel();
    fadeControllers[index].reverse();
    controllers[index].reverse();
  }

  void _updateWidthsAndOpacity(bool isHovered, int index) {
    setState(() {
      if (isHovered) {
        _animateShow(index);
        hoveredIndex = index + 1;
        widthsList[index] = baseWidth * 2;
        for (var i = 0; i <= 4; i++) {
          if (i != index) {
            widthsList[i] = (lastMaxWidth - baseWidth * 2) / 4;
          }
        }
      } else {
        _animateHide(index);
        hoveredIndex = -1;
        widthsList = imagesResList.map((e) => baseWidth).toList();
      }
    });
  }
}
