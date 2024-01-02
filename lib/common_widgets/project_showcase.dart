import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../utils/common_functions.dart';

class ProjectShowcase extends StatefulWidget {
  final String title;
  final String subTitle;
  final String appStoreUrl;
  final String playStoreUrl;

  ProjectShowcase({
    required this.title,
    required this.subTitle,
    required this.appStoreUrl,
    required this.playStoreUrl,
  });

  @override
  _ProjectShowcaseState createState() => _ProjectShowcaseState();
}

class _ProjectShowcaseState extends State<ProjectShowcase> {
  List<Widget> _showcaseList = [];
  String _playStore = "";

  @override
  void initState() {
    /// todo generic
    _playStore = 'playstore_dark';
    if (widget.title == 'BalloneStar') {
      _showcaseList = [
        _placeholder('ballonestar/b1'),
        _placeholder('ballonestar/b2'),
        _placeholder('ballonestar/b3'),
        _placeholder('ballonestar/b4'),
        _placeholder('ballonestar/b5'),
        _placeholder('ballonestar/b6'),
        _placeholder('ballonestar/b7'),
      ];
    } else if (widget.title == 'NayLa') {
      _showcaseList = [
        _placeholder('nayla/n1'),
        _placeholder('nayla/n2'),
        _placeholder('nayla/n3'),
        _placeholder('nayla/n4'),
        _placeholder('nayla/n5'),
        _placeholder('nayla/n6'),
        _placeholder('nayla/n7'),
      ];
    } else if (widget.title == 'VVIP9 ( NFC Smart Card)') {
      _showcaseList = [
        _placeholder('v1'),
        _placeholder('v2'),
        _placeholder('v3'),
      ];
    } else if (widget.title == 'HTUT Dhamma Puzza') {
      _showcaseList = [
        _placeholder('dhamma/d1'),
        _placeholder('dhamma/d2'),
        _placeholder('dhamma/d3'),
        _placeholder('dhamma/d4'),
        _placeholder('dhamma/d5'),
      ];
    } else if (widget.title == 'Star Channel') {
      _showcaseList = [
        _placeholder('s1'),
        _placeholder('s2'),
      ];
    } else if (widget.title == 'NanSan Japanese Bookshop') {
      _showcaseList = [
        _placeholder('ns1'),
        _placeholder('ns2'),
        _placeholder('ns3'),
        _placeholder('ns4'),
      ];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Text(
                  widget.title.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Constants.lightestSlate,
                    fontFamily: 'FiraSans',
                  ),
                ),
                SizedBox(
                  width: widget.playStoreUrl != null ? 16 : 0,
                ),
                widget.playStoreUrl != null
                    ? InkWell(
                        onTap: () {
                          CommonFunction.openFromUrl(widget.playStoreUrl);
                        },
                        child: Card(
                          shadowColor: Constants.green,
                          color: Constants.navy,
                          elevation: 5,
                          child: Image.asset(
                            'asset/google_play.png',
                            fit: BoxFit.fill,
                            width: 110,
                            height: 30,
                          ),
                        ),
                      )
                    : Container(),
                widget.appStoreUrl != null
                    ? Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: InkWell(
                          onTap: () {
                            CommonFunction.openFromUrl(widget.appStoreUrl);
                          },
                          onHover: (value) {
                            if (value) {
                              setState(() {
                                _playStore = 'github_light';
                              });
                            } else {
                              setState(() {
                                _playStore = 'github_dark';
                              });
                            }
                          },
                          child: Image.asset(
                            'asset/appstore.jpeg',
                            width: 110,
                            height: 30,
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            widget.subTitle,
            style: TextStyle(
              fontSize: CommonFunction.isApp(context) ? 18 : 16,
              color: Constants.green,
              fontFamily: 'FiraSans',
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: _showcaseList,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _placeholder(String image) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: widget.title == 'Intellect Dashboard' ? 16 : 0,
      ),
      child: Image.asset(
        'asset/$image.png',
      ),
    );
  }
}
