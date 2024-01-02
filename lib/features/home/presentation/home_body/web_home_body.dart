import 'package:flutter/material.dart';

import '../../../../common_widgets/bottom_line_widget.dart';
import '../../../../common_widgets/email_widget.dart';
import '../../../../common_widgets/main_page/about_me_widget.dart';
import '../../../../common_widgets/main_page/experience.dart';
import '../../../../common_widgets/main_page/introduction.dart';
import '../../../../common_widgets/main_page/projects.dart';
import '../../../../common_widgets/other_noteworthy_projects/other_projects.dart';
import '../../../../common_widgets/project_showcase.dart';
import '../../../../common_widgets/social_handles/social_handles.dart';
import '../../../../constants/constants.dart';

class WebHomeBody extends StatelessWidget {
  final PageController pageController;

  const WebHomeBody({
    super.key,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: RawScrollbar(
          controller: pageController,
          thickness: 8,
          interactive: true,
          thumbColor: Constants.green,
          radius: const Radius.circular(8),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SocialHandles(),
                    const SizedBox(
                      height: 16,
                    ),
                    BottomLineWidget(),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 128),
                    child: PageView(
                      scrollDirection: Axis.vertical,
                      controller: pageController,
                      children: [
                        Introduction(),
                        AboutMeWidget(),
                        Experience(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 48),
                          child: Projects(),
                        ),

                        /// todo pass this through constants
                        _showcaseWidget(
                          'NayLa',
                          'We can ask about our future and the astrologers are ready to answer. In Nayla appplication, there are Myanmar 100 Calendar, Tarrot, PhoneShwe, Number Baydin, Mahaboard, Zoadic, News. (Now, this app is available on google play and app store)',
                          appUrl:
                              'https://play.google.com/store/apps/details?id=com.htutmedia.nayla',
                          appStoreUrl:
                              'https://apps.apple.com/us/app/nayla-akharpay/id6463712281',
                        ),
                        _showcaseWidget(
                          'VVIP9 ( NFC Smart Card)',
                          'VVIP9 is a Digital Business Card or Smart Card Solution. This all allow to share your contact info, social media, files, videos, more and especially Smart Profile with just a tap of your VVIP9 device or scan of your VVIP9 QR code. ',
                          appUrl:
                              'https://play.google.com/store/apps/details?id=com.htut.vvip9_digital_business_card_nfc_smart_profile_share_everything',
                          appStoreUrl:
                              'https://apps.apple.com/us/app/vvip9/id1611906071',
                        ),
                        _showcaseWidget(
                          'HTUT Dhamma Puzza',
                          'We have made easily to pray a worship in your daily life with Parli-Myanmar two languages. And We can count the bead with manual Badee and digital Badee by looking the way of counting and set the daily alarm. We provide a lot of counting the bead.',
                          appUrl:
                              'https://play.google.com/store/apps/details?id=com.htutmedia.dhamma',
                          appStoreUrl:
                              'https://apps.apple.com/us/app/htut-dhamma-puzar/id1577783413',
                        ),
                        _showcaseWidget(
                          'Star Channel',
                          'In this application, we present a lot of entertainment. Such as Dhamma,Baydin,Education,Health,History,Life Style, Sports,Games and DIY. Users can read the articles  and watch videos and news  in one place.',
                          appUrl:
                              'https://play.google.com/store/apps/details?id=app.batuni',
                          appStoreUrl:
                              'https://apps.apple.com/us/app/star-channel/id1607956479',
                        ),
                        _showcaseWidget(
                          'NanSan Japanese Bookshop',
                          'A student can see the all japanese\'s course books and download the audio file. Student can also download pdf according to the subjects. ',
                          appUrl:
                              'https://play.google.com/store/apps/details?id=com.nansanjapanese.bookshop',
                          appStoreUrl: '',
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 48),
                          child: OtherProjects(),
                        ),
                      ],
                    ),
                  ),
                ),
                EmailWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _showcaseWidget(
    String title,
    String subtitle, {
    required String appUrl,
    required String appStoreUrl,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: ProjectShowcase(
        title: title,
        subTitle: subtitle,
        playStoreUrl: appUrl,
        appStoreUrl: appStoreUrl,
      ),
    );
  }
}
