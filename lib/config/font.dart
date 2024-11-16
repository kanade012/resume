import 'package:flutter/material.dart';
import 'package:resume/config/color.dart';

import '../main.dart';

class KR {
  KR._();

  static TextStyle title = TextStyle(
    fontSize: ratio.width * 36,
    color: ResumeColors.titlecolor,
    fontFamily: 'NotoSans', 
  );

  static TextStyle mobtitle = TextStyle(
    fontSize: ratio.width * 72,
    color: ResumeColors.titlecolor,
    fontFamily: 'NotoSans', 
  );

  static TextStyle subtitle = TextStyle(
    fontSize: ratio.width * 12,
    color: ResumeColors.subtitlecolor,
    fontFamily: 'NotoSans', 
  );

  static TextStyle mobsubtitle = TextStyle(
    fontSize: ratio.width * 28,
    color: ResumeColors.subtitlecolor,
    fontFamily: 'NotoSans', 
  );

  static TextStyle banner = TextStyle(
    fontSize: ratio.width * 20,
    color: ResumeColors.bannertitlecolor,
    fontFamily: 'NotoSans', 
  );

  static TextStyle mobbanner = TextStyle(
    fontSize: ratio.width * 40,
    fontWeight: FontWeight.bold,
    color: ResumeColors.bannertitlecolor,
    fontFamily: 'NotoSans', 
  );
}
//
// class EN {
//   EN._();
//
// }

