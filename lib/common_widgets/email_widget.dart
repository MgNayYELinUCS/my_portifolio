import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../utils/common_functions.dart';
import 'bottom_line_widget.dart';

class EmailWidget extends StatefulWidget {
  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget> {
  bool _emailHover = false;
  double _animatedPaddingValueBottom = 0;
  double _animatedPaddingValueTop = 24;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RotatedBox(
          quarterTurns: 1,
          child: InkWell(
            onTap: () {
              CommonFunction.openMail();
            },
            onHover: (val) {
              if (val) {
                setState(() {
                  _emailHover = true;
                  _animatedPaddingValueTop = 18;
                  _animatedPaddingValueBottom = 6;
                });
              } else {
                setState(() {
                  _emailHover = false;
                  _animatedPaddingValueTop = 24;
                  _animatedPaddingValueBottom = 0;
                });
              }
            },
            child: AnimatedPadding(
              curve: Curves.easeIn,
              padding: EdgeInsets.only(
                left: _animatedPaddingValueTop,
                right: _animatedPaddingValueBottom,
              ),
              duration: const Duration(milliseconds: 100),
              child: Text(
                Constants.email,

                /// todo style from TextStyle
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'FiraSans',
                  fontWeight: FontWeight.w400,
                  color: _emailHover ? Constants.green : Constants.slate,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        !CommonFunction.isApp(context)
            ? InkWell(
                onTap: () {
                  //CommonFunction.openFromUrl('https://brittanychiang.com/');
                },
                child: const Tooltip(
                  message: 'Email',
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Constants.green,
                    fontFamily: 'FiraSans',
                  ),
                  child: Icon(
                    Icons.whatshot,
                    size: 20,
                    color: Constants.lightestSlate,
                  ),
                ),
              )
            : Container(),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 8,
          ),
          child: BottomLineWidget(),
        ),
      ],
    );
  }
}
