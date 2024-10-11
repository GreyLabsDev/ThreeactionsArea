import 'package:flutter/material.dart';
import 'package:threeactions_area/widgets/cv_elements/EventButton.dart';

import '../base/TextContentBig.dart';

class EventsBlock extends StatelessWidget {
  final Color titleColor;

  const EventsBlock({super.key, required this.titleColor});

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextContentBig(text: "Speaking", textColor: titleColor,),
            SizedBox(height: 16.0,),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                EventButton(
                  imageAsset: "assets/img/card_conf_pl.jpg",
                  url: "https://podlodka.io/crew-records#:~:text=%D0%94%D0%B5%D1%82%D0%B0%D0%BB%D0%B8-,Android%20Crew%20%239,-12%20%D1%87%D0%B0%D1%81%D0%BE%D0%B2%20%D1%81%D0%B5%D1%81%D1%81%D0%B8%D0%B9"
                ),
                EventButton(
                  imageAsset: "assets/img/card_conf_uic.jpg",
                  url: "https://uic.dev/speakers/shardiko",
                ),
                EventButton(
                  imageAsset: "assets/img/card_conf_mb.jpg",
                  url: "https://mobiusconf.com/archive/2022%20Autumn/persons/a214a136347b4c91887655e42fe06113/",
                ),
                EventButton(
                  imageAsset: "assets/img/card_conf_st.jpg",
                  url: "https://ul24.nastachku.ru/sdui-and-copmose-%D0%B1%D1%83%D0%B4%D1%83%D1%89%D0%B5%D0%B5",
                ),
              ],
            )
          ],
        );
  }

}