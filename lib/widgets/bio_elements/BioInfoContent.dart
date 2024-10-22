import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';

import '../base/TextContentBig.dart';
import '../base/TextSubtitle.dart';

class BioInfoModel {
  String resourcePath;
  String title;
  String description;

  BioInfoModel(this.resourcePath, this.title, this.description);
}

class BioInfoContent extends StatelessWidget {
  final List<BioInfoModel> data;

  const BioInfoContent({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: data.mapIndexed((int index, BioInfoModel item) {
      bool isFullScreenWidth = (index + 1) % 3 == 0;
      return BioInfoCard(isFullWidth: isFullScreenWidth, model: item);
    }).toList());
  }
}

class BioInfoCard extends StatelessWidget {
  bool isFullWidth = false;
  BioInfoModel model;

  BioInfoCard({super.key, this.isFullWidth = false, required this.model});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      bool enableVerticalScreenMode = constraints.maxWidth <= 600;

      double? containerWidth;

      if (enableVerticalScreenMode || isFullWidth) {
        containerWidth = constraints.maxWidth;
      } else {
        containerWidth = constraints.maxWidth / 2;
      }

      return Container(
        width: containerWidth,
        height: 320.0,
        padding: EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(model.resourcePath), fit: BoxFit.fitWidth)),
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextSubtitle(text: model.title),
            TextContentBig(text: model.description)
          ],
        ),
        )
      );
    });
  }
}
