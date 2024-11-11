import 'package:flutter/material.dart';
import 'package:resume/page/mob_page.dart';
import 'package:resume/page/pc_page.dart';

late Size ratio;

void main() {
  runApp(const MyApp());
}

bool isMobile(BuildContext context) {
  if (MediaQuery.of(context).size.width < MediaQuery.of(context).size.height) {
    return true;
  } else {
    return false;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// 반응형 설정을 위해 ratio 선언
    ratio = Size(MediaQuery.sizeOf(context).width / 1280,
        MediaQuery.sizeOf(context).height / 832);
    return MaterialApp(
      title: "장영하 ( claude012 )",
      debugShowCheckedModeBanner: false,
      home: isMobile(context) ? MobScreen() : PCScreen(),
    );
  }
}

