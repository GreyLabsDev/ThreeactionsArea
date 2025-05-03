import 'package:flutter/material.dart';

import '../../resources/Resources.dart';
import 'TextContent.dart';
import 'TextSubtitle.dart';

class SkillItem {
  String name;
  List<String> skillsList;

  SkillItem(this.name, this.skillsList);
}

class SkillsColumn extends StatelessWidget {
  final List<SkillItem> items;
  final double leftPadding;

  SkillsColumn(this.items, this.leftPadding);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _buildRowContent(),
    );
  }

  List<Widget> _buildRowContent() {
    return items.map((item) => SkillsBlock(item, leftPadding)).toList();
  }
}

class SkillsBlock extends StatelessWidget {
  final SkillItem item;
  final double leftPadding;

  SkillsBlock(this.item, this.leftPadding);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0, left: leftPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextSubtitle(
            text: item.name,
            textColor: AppColors.ContentDarkBlue,
          ),
          Wrap(
              spacing: 4.0,
              runSpacing: 4.0,
              textDirection: TextDirection.ltr,
              children: _buildWrapContent(item.skillsList),
            ),
        ],
      ),
    );
  }

  List<Widget> _buildWrapContent(List<String> items) {
    return items
        .map((item) => Container(
              padding: EdgeInsets.all(4.0),
              color: Colors.blueGrey,
              child: TextContent(text: item, textColor: Colors.black),
            ))
        .toList();
  }
}
