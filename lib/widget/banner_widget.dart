import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:resume/config/color.dart';
import 'package:resume/config/font.dart';

import '../main.dart';

class banner extends StatelessWidget {
  final String title;
  final String link;

  const banner({super.key, required this.title, required this.link});
  bool isMobile(BuildContext context) {
    if (MediaQuery.of(context).size.width < MediaQuery.of(context).size.height) {
      return true;
    } else {
      return false;
    }
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>html.window.open('$link', '_blank'),
      child: Container(
        width: ratio.width * 180,
        height: isMobile(context) ? ratio.height * 20 : ratio.height * 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: ResumeColors.bannercolor,
          border: Border.all(color: ResumeColors.bannerbordercolor, width: 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/images/$title.png", width: ratio.width * 24, height: ratio.height * 24,),
            Text("$title", style: KR.banner,),
            Image.asset("assets/images/arrow.png", width: ratio.width * 24, height: ratio.height * 24,)
          ],
        ),
      ),
    );
  }
}
