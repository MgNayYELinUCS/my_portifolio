import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../utils/common_functions.dart';
import '../profile_image_widget.dart';
import '../sub_header.dart';
import '../tech_stack_item.dart';

class AboutMeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SubHeader(
            number: '01.',
            heading: 'About me',
          ),
          SizedBox(
            height: CommonFunction.isApp(context) ? 16 : 32,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (CommonFunction.isApp(context)) ...[
                      Center(child: ProfileImageWidget()),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                    Text(
                      "I'm using Flutter to create mobile apps. \nI presently work as a Senior Flutter Developer for HTUT, and I'm also working on various side projects to improve my mobile skills.",
                      style: TextStyle(
                        fontSize: CommonFunction.isApp(context) ? 18 : 16,
                        color: Constants.slate,
                        fontFamily: 'FiraSans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'I am passionate to learn about new technologies and innovations.',
                      style: TextStyle(
                        fontSize: CommonFunction.isApp(context) ? 18 : 16,
                        color: Constants.slate,
                        fontFamily: 'FiraSans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Flexible(
                      child: Text(
                        "I've worked on the following technologies:",
                        style: TextStyle(
                          fontSize: CommonFunction.isApp(context) ? 18 : 16,
                          color: Constants.slate,
                          fontFamily: 'FiraSans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Flexible(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TechStackItem(text: 'Flutter'),
                              SizedBox(
                                height: CommonFunction.isApp(context) ? 8 : 12,
                              ),
                              TechStackItem(text: 'Android'),
                              SizedBox(
                                height: CommonFunction.isApp(context) ? 8 : 12,
                              ),
                              TechStackItem(text: 'Java'),
                            ],
                          ),
                          const SizedBox(
                            width: 32,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TechStackItem(text: 'Flutter-Web'),
                              SizedBox(
                                height: CommonFunction.isApp(context) ? 8 : 12,
                              ),
                              TechStackItem(text: 'iOS'),
                              SizedBox(
                                height: CommonFunction.isApp(context) ? 8 : 12,
                              ),
                              TechStackItem(text: 'Kotlin'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              !CommonFunction.isApp(context)
                  ? Flexible(
                      flex: 4,
                      child: ProfileImageWidget(),
                    )
                  : Container()
            ],
          ),
        ],
      ),
    );
  }
}
