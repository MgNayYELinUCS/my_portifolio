import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../utils/common_functions.dart';
import 'other_project_item.dart';

class OtherProjects extends StatefulWidget {
  @override
  _OtherProjectsState createState() => _OtherProjectsState();
}

class _OtherProjectsState extends State<OtherProjects> {
  List<String> _titleOtherProject = [];

  List<String> _subTitleOtherProject = [];

  List<String> _link = [];

  @override
  void initState() {
    super.initState();

    /// todo generic
    _titleOtherProject = [
      'Flutter Animation Examples',
      'FlutterUIChallenge',
      'Weather App',
      'Calculator (Swift ui test)',
    ];
    _subTitleOtherProject = [
      'Testing all types of widgets used for animation using AnimationController and animation packages.',
      'List of all the flutter ui screens. Login, Register ,Slider,etc ..',
      'It is tinging app for calling api using retrofit and BLoC of Weather api.',
      'Testing swift ui.',
    ];
    _link = [
      "", "", "",
      "" // 'https://github.com/hiashutoshsingh/flutter-animation_examples',
      // 'https://github.com/hiashutoshsingh/FlutterUIChallenge',
      // 'https://github.com/hiashutoshsingh/Movie',
      // 'https://github.com/hiashutoshsingh/Bulletin',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Other Noteworthy Projects',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Constants.lightestSlate,
            fontFamily: 'FiraSans',
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: [
              Center(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    OtherNoteworthyProjectItem(
                      title: _titleOtherProject[0],
                      description: _subTitleOtherProject[0],
                      url: _link[0],
                    ),
                    OtherNoteworthyProjectItem(
                      title: _titleOtherProject[1],
                      description: _subTitleOtherProject[1],
                      url: _link[1],
                    ),
                    OtherNoteworthyProjectItem(
                      title: _titleOtherProject[2],
                      description: _subTitleOtherProject[2],
                      url: _link[2],
                    ),
                    OtherNoteworthyProjectItem(
                      title: _titleOtherProject[3],
                      description: _subTitleOtherProject[3],
                      url: _link[3],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        CommonFunction.isApp(context)
            ? Padding(
                padding: const EdgeInsets.only(top: 16),
                child: InkWell(
                  onTap: () {
                    CommonFunction.openFromUrl('https://brittanychiang.com/');
                  },
                  child: Card(
                    color: Constants.slate,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Shout-out to Brittany Chiang',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Constants.white,
                                fontFamily: 'FiraSans',
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.open_in_new,
                              size: 20,
                              color: Constants.green,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
