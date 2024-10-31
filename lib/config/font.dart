import 'package:flutter/material.dart';
import 'package:resume/config/color.dart';

import '../main.dart';

class KR {
  KR._();

  static TextStyle title = TextStyle(
    fontSize: ratio.width * 36,
    color: ResumeColors.titlecolor
  );
  static TextStyle subtitle = TextStyle(
      fontSize: ratio.width * 12,
      color: ResumeColors.subtitlecolor
  );
  static TextStyle banner = TextStyle(
      fontSize: ratio.width * 20,
      color: ResumeColors.bannertitlecolor
  );
}
//
// class EN {
//   EN._();
//
// }