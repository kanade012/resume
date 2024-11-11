import 'package:flutter/material.dart';
import 'package:resume/config/color.dart';

import '../main.dart';

class KR {
  KR._();

  static TextStyle title = TextStyle(
    fontSize: ratio.width * 36,
    color: ResumeColors.titlecolor
  );
  static TextStyle mobtitle = TextStyle(
      fontSize: ratio.width * 72,
      color: ResumeColors.titlecolor
  );
  static TextStyle subtitle = TextStyle(
      fontSize: ratio.width * 12,
      color: ResumeColors.subtitlecolor
  );
  static TextStyle mobsubtitle = TextStyle(
      fontSize: ratio.width * 28,
      color: ResumeColors.subtitlecolor
  );
  static TextStyle banner = TextStyle(
      fontSize: ratio.width * 20,
      color: ResumeColors.bannertitlecolor
  );
  static TextStyle mobbanner = TextStyle(
      fontSize: ratio.width * 40,
      fontWeight: FontWeight.bold,
      color: ResumeColors.bannertitlecolor
  );
}
//
// class EN {
//   EN._();
//
// }

