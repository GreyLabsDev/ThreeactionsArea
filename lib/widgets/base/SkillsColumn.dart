import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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

  SkillsColumn(this.items);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: _buildRowContent(),
    );
  }

  List<Widget> _buildRowContent() {
    return items.map((item) => SkillsBlock(item)).toList();
  }
}

class SkillsBlock extends StatelessWidget {
  final SkillItem item;

  SkillsBlock(this.item);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextSubtitle(text: item.name, textColor: AppColors.ContentDarkBlue,),
          Wrap(
            spacing: 4.0,
            children: _buildWrapContent(item.skillsList),
          )
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
