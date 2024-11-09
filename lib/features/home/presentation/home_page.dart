import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

import '../../../common_widgets/app_bar/mobile_app_bar.dart';
import '../../../common_widgets/app_bar/web_app_bar.dart';
import '../../../common_widgets/social_handles/social_handles.dart';
import '../../../constants/constants.dart';
import '../../../utils/common_functions.dart';
import 'home_body/app_home_body.dart';
import 'home_body/web_home_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  late double _appBarHeight = 70;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      keepPage: true,
      viewportFraction: 1,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.navy,
      bottomNavigationBar: CommonFunction.isApp(context)
          ? SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(
                  kIsWeb ? 8.0 : 0,
                ),
                child: SocialHandles(),
              ),
            )
          : null,
      appBar: AppBar(
        backgroundColor: Constants.navy,
        shadowColor: Constants.green.withOpacity(0.5),
        elevation: 10,
        toolbarHeight: _appBarHeight,
        title: CommonFunction.isApp(context)
            ? MobileAppBar(
                appBarClick: (isToggled, item) {
                  setState(() {
                    if (isToggled) {
                      _appBarHeight = 160;
                    } else {
                      _appBarHeight = 70;
                    }
                  });
                  if (item != -1) {
                    _pageController.animateToPage(
                      item,
                      curve: Curves.easeIn,
                      duration: const Duration(milliseconds: 800),
                    );
                  }
                },
              )
            : WebAppBar(
                pageCallback: (pageNumber) {
                  _pageController.animateToPage(
                    pageNumber,
                    curve: Curves.easeIn,
                    duration: const Duration(milliseconds: 800),
                  );
                },
              ),
      ),
      body: Stack(
        children: [
          CircularParticle(
            key: UniqueKey(),
            awayRadius: 1,
            numberOfParticles: CommonFunction.isApp(context) ? 20 : 50,
            speedOfParticles: 2,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            onTapAnimation: true,
            particleColor: Constants.white,
            awayAnimationDuration: const Duration(milliseconds: 600),
            maxParticleSize: 2,
            isRandSize: true,
            isRandomColor: true,
            randColorList: const [
              Constants.green,
              Constants.white,
              Constants.lightestNavy
            ],
            awayAnimationCurve: Curves.easeInOut,
            enableHover: false,
            connectDots: false,
          ),
          if (CommonFunction.isApp(context))
            AppHomeBody(
              pageController: _pageController,
            )
          else
            WebHomeBody(
              pageController: _pageController,
            ),
        ],
      ),
    );
  }
}
