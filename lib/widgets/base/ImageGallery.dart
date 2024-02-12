import 'dart:math';

import 'package:flutter/material.dart';
import 'package:threeactions_area/widgets/base/TextTitle.dart';
import 'package:threeactions_area/widgets/base/TextTitleBig.dart';

class ImageGallery extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SimpleGalleryState();
  }
}

class SimpleGalleryState extends State {
  
  var widthsList = [];
  var hoveredIndex = -1;
  var baseWidth = 0.0;
  var lastMaxWidth = 0.0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (lastMaxWidth != constraints.maxWidth) {
        baseWidth = constraints.maxWidth / 4;
        widthsList = [baseWidth, baseWidth, baseWidth, baseWidth];
        lastMaxWidth = constraints.maxWidth;
      }

      return Container(
        child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  onHover: (isHovered) {
                    _updateWidths(isHovered, 0);
                  },
                  child: AnimatedContainer(
                    height: constraints.maxHeight,
                    width: widthsList[0],
                    curve: Curves.fastOutSlowIn,
                    duration: Durations.medium4,
                    child: Image.asset(
                      "assets/img/button_bg_bio.png",
                      fit: BoxFit.cover,
                      height:
                          constraints.maxHeight, //48 - external padding
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  onHover: (isHovered) {
                    _updateWidths(isHovered, 1);
                  },
                  child: AnimatedContainer(
                    height: constraints.maxHeight,
                    width: widthsList[1],
                    curve: Curves.fastOutSlowIn,
                    duration: Durations.medium4,
                    child: Image.asset(
                      "assets/img/button_bg_skills.png",
                      fit: BoxFit.cover,
                      height:
                          constraints.maxHeight, //48 - external padding
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  onHover: (isHovered) {
                    _updateWidths(isHovered, 2);
                  },
                  child: AnimatedContainer(
                    height: constraints.maxHeight,
                    width: widthsList[2],
                    curve: Curves.fastOutSlowIn,
                    duration: Durations.medium4,
                    child: Image.asset(
                      "assets/img/button_bg_contacts.png",
                      fit: BoxFit.cover,
                      height:
                          constraints.maxHeight, //48 - external padding
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  onHover: (isHovered) {
                    _updateWidths(isHovered, 3);
                  },
                  child: AnimatedContainer(
                    height: constraints.maxHeight,
                    width: widthsList[3],
                    curve: Curves.fastOutSlowIn,
                    duration: Durations.medium4,
                    child: Image.asset(
                      "assets/img/button_bg_art.png",
                      fit: BoxFit.cover,
                      height:
                          constraints.maxHeight, //48 - external padding
                    ),
                  ),
                ),
              ],
            ),
      );
    });
  }

  void _updateWidths(bool isHovered, int index) {
    setState(() {
      if (isHovered) {
        hoveredIndex = index + 1;
        widthsList[index] = baseWidth * 2;
        for (var i = 0; i <= 3; i++) {
          if (i != index) {
            widthsList[i] = (lastMaxWidth - baseWidth * 2) / 3;
          }
        }
      } else {
        hoveredIndex = -1;
        widthsList = [baseWidth, baseWidth, baseWidth, baseWidth];
      }
      print("HOVER $hoveredIndex");
      print("WIDTHS $widthsList");
    });
  }
}