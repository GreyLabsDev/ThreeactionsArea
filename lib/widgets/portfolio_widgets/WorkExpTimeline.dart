import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../resources/Resources.dart';
import '../base/TextContent.dart';
import '../base/TextContentMin.dart';
import '../base/TextSubtitle.dart';

class WorkExpTimeline extends StatelessWidget {
  Widget _buildExpItem(String date, String companyInfo, String description) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextSubtitle(
                text: date,
                textColor: AppColors.ContentDarkBlue,
                textAlign: TextAlign.end,
              ),
              TextContent(
                text: companyInfo,
                textColor: AppColors.ContentDarkBlue,
                textAlign: TextAlign.end,
              ),
              TextContentMin(
                text: description,
                textColor: AppColors.ContentDarkBlue,
                textAlign: TextAlign.end,
              )
            ],
          ),
          SizedBox(
            width: 8.0,
          ),
          Container(
            width: 16.0,
            height: 2.0,
            // color: Colors.white,
            color: Color(0xff6EA1A9),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            right: Divider.createBorderSide(context,
                color: Color(0xff6EA1A9), width: 2.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _buildExpItem(
                "2021 - Current time",
                "Skyeng\nSenior Android Developer",
                "EdTech,\nlanguage learning projects"),
            _buildExpItem(
                "2019-2021",
                "Home Credit Bank\nMiddle Android Developer",
                "FinTech, private\nbanking, marketplace, loan projects"),
            _buildExpItem("2018-2019", "EastWind\nAndroid Developer",
                "Custom development,\nbanking, services and marketplaces"),
            _buildExpItem("2018", "ARGIN\nAndroid Developer",
                "AR projects, video/image\ntracking"),
            _buildExpItem("2016-2018", "HOSTCO\nInformation Security Analyst",
                "Audit and integration of security\nsystems in IT companies"),
          ],
        ),
      ),
    );
  }
}
