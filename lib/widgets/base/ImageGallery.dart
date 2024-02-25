import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:threeactions_area/widgets/base/TextTitle.dart';
import 'package:threeactions_area/widgets/base/TextTitleBig.dart';

class ImageModel {
  String resourcePath;
  String title;
  String description;

  ImageModel({required this.resourcePath, required this.title, required this.description});
}

class ImageGallery extends StatefulWidget {
  final List<ImageModel> imagesResList;

  const ImageGallery({super.key, required this.imagesResList});

  @override
  State<StatefulWidget> createState() {
    return SimpleGalleryState(imagesResList: imagesResList);
  }
}

class SimpleGalleryState extends State with TickerProviderStateMixin {
  final List<ImageModel> imagesResList;

  var widthsList = [];
  var hoveredIndex = -1;
  var baseWidth = 0.0;
  var lastMaxWidth = 0.0;

  List<AnimationController> controllers = [];
  List<Animation> opacityAcnimations = [];

  SimpleGalleryState({required this.imagesResList});

  @override
  void initState() {
    super.initState();

    for (final (index, item) in imagesResList.indexed) {
      controllers.add(
        AnimationController(vsync: this, duration: Duration(milliseconds: 200))
          ..addListener(() {
            setState(() {});
          }),
      );
      opacityAcnimations
          .add(Tween<double>(begin: 0.0, end: 1.0).animate(controllers[index]));
    }
  }

  List<Widget> _buildImageWidgets(BoxConstraints constraints) {
    List<Widget> widgets = [];
    imagesResList.forEachIndexed((index, element) {
      widgets.add(
        InkWell(
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
              duration: Durations.medium4,
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
                          TextTitleBig(text: imagesResList[index].title),
                          TextTitle(text: imagesResList[index].description),
                          SizedBox(
                            height: 32.0,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )
      );
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

  void _animateShow(int index) {
    controllers[index].forward();
  }

  void _animateHide(int index) {
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
      print("HOVER $hoveredIndex");
      print("WIDTHS $widthsList");
    });
  }
}
