import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';

import '../../resources/Resources.dart';
import '../base/TextContentBig.dart';
import '../base/TextSubtitle.dart';
import '../base/TextTitle.dart';

class BioInfoModel {
  String resourcePath;
  String title;
  String description;

  BioInfoModel(this.resourcePath, this.title, this.description);
}

class BioInfoContent extends StatelessWidget {
  List<BioInfoModel> data;
  Color accentFilterColor;

  BioInfoContent({super.key, required this.data, this.accentFilterColor = AppColors.ContentLightYellow});

  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: data.mapIndexed((int index, BioInfoModel item) {
      bool isFullScreenWidth = (index + 1) % 3 == 0;
      return BioInfoCard(isFullWidth: isFullScreenWidth, model: item, accentFilterColor: accentFilterColor,);
    }).toList());
  }
}

class BioInfoCard extends StatelessWidget {
  bool isFullWidth = false;
  BioInfoModel model;
  Color accentFilterColor;

  BioInfoCard({super.key, this.isFullWidth = false, required this.model, this.accentFilterColor = AppColors.ContentLightYellow});

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
        padding: EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(model.resourcePath), fit: BoxFit.cover)),
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextTitle(text: model.title, textAlign: TextAlign.center, textColor: accentFilterColor ?? AppColors.ContentWhite,),
            SizedBox(height: 24.0,),
            TextSubtitle(text: model.description, textAlign: TextAlign.center, textColor: accentFilterColor ?? AppColors.ContentWhite,)
          ],
        ),
        )
      );
    });
  }
}
