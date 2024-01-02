import 'package:flutter/material.dart';

import '../project_showcase.dart';
import '../sub_header.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SubHeader(
            number: '03.',
            heading: 'Some Things I’ve Built',
          ),
          const SizedBox(
            height: 32,
          ),

          /// todo change this
          /// todo generic
          Expanded(
            child: ProjectShowcase(
              title: 'BalloneStar',
              subTitle:
                  'BalloneStar app provides you information about the sport for top five famous UEFA Leagues and other.',
              appStoreUrl:
                  'https://apps.apple.com/us/app/ballonestar-merchant/id6451040330',
              playStoreUrl:
                  'https://play.google.com/store/apps/details?id=com.htut_media.ballonestar',
            ),
          ),
        ],
      ),
    );
  }
}
