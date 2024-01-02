import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../utils/common_functions.dart';

class CompanyJobInfo extends StatelessWidget {
  final int selectedIndex;

  const CompanyJobInfo({
    super.key,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    /// todo generic
    if (selectedIndex == 0) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _position('Former Internship Developer', '360ed',
              'https://m.360ed.org/', context),
          const SizedBox(
            height: 8,
          ),
          _period('June 2019', 'Aug 2019', context),
          const SizedBox(
            height: 16,
          ),
          _jobRole('Android Developer (Kotlin)', context),
          const SizedBox(
            height: 16,
          ),
        ],
      );
    }
    if (selectedIndex == 1) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// todo generic
          _position('Junior Android Developer', '360ed', 'https://m.360ed.org/',
              context),
          const SizedBox(
            height: 8,
          ),
          _period('Oct 2019', 'Feb 2020', context),
          const SizedBox(
            height: 16,
          ),
          _jobRole(
              'I developed and released Report App for IT team to communicate with Customer Service team. It can store all the comments and issues that report from Testers and seniors can assign to solve that issues',
              context),
          const SizedBox(
            height: 12,
          ),
          _jobRole(
              'I maintained old application and add more data to the SQL database.',
              context),
          const SizedBox(
            height: 12,
          ),
          _jobRole(
              'I researched new technologies and presented to my colleagues to switch knowledge about Android platform tools.',
              context),
          const SizedBox(
            height: 12,
          ),
        ],
      );
    } else if (selectedIndex == 2) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _position(
              'Flutter Developer', 'HTUT', 'https://www.htut.com/', context),
          const SizedBox(
            height: 8,
          ),
          _period('Feb 2020', 'Feb 2021', context),
          const SizedBox(
            height: 16,
          ),
          _jobRole(
              'I created new application and maintained old with my seniors by using Java and Kotlin for 1 years. Then we changed platform from Android to Flutter according to the necessity.',
              context),
          const SizedBox(
            height: 12,
          ),
          _jobRole(
              "In Flutter, I built small flutter app buy using Flutter,Firebase,SQLite, Provider,Http, and BOLoC",
              context),
          const SizedBox(
            height: 12,
          ),
          _jobRole(
              "Responsible for the design, development and uploading application to PlaySotre and AppStore",
              context),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _position('Senior Flutter Developer', 'HTUT', 'https://www.htut.com/',
              context),
          const SizedBox(
            height: 8,
          ),
          _period('Feb 2021', 'Present', context),
          const SizedBox(
            height: 16,
          ),
          _jobRole(
              'Successfully convert all native application to Flutter application.',
              context),
          const SizedBox(
            height: 12,
          ),
          _jobRole(
              'Following Clean code architecture and separate layers such as Presentation,Application,Domain and Data. I used feature fast.',
              context),
          const SizedBox(
            height: 12,
          ),
          _jobRole(
              'Improved app functionality and logics by writing modular code',
              context),
          _jobRole(
              "Responsible for the design, testing,error handing,development and assign to my juniors.",
              context),
        ],
      );
    }
  }

  Widget _position(
      String position, String company, String link, BuildContext context) {
    return Row(
      children: [
        Text(
          position,
          style: TextStyle(
            fontSize: 20,
            color: Constants.white,
            fontFamily: 'FiraSans',
            fontWeight: CommonFunction.isApp(context)
                ? FontWeight.w600
                : FontWeight.normal,
          ),
        ),
        CommonFunction.isApp(context)
            ? Container()
            : InkWell(
                onTap: () {
                  CommonFunction.openFromUrl(link);
                },
                child: Text(
                  ' @' + company,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'FiraSans',
                    fontWeight: FontWeight.w400,
                    color: Constants.green,
                  ),
                ),
              ),
      ],
    );
  }

  Widget _period(String start, String end, BuildContext context) {
    return Text(
      '$start - $end',
      style: TextStyle(
        fontSize: CommonFunction.isApp(context) ? 18 : 16,
        color: Constants.slate,
        fontFamily: 'FiraSans',
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget _jobRole(String value, BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Icon(
            Icons.play_arrow,
            size: CommonFunction.isApp(context) ? 20 : 16,
            color: Constants.green,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Flexible(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 16,
              color: Constants.slate,
              fontFamily: 'FiraSans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
