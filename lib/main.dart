import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume/page/mob_page.dart';
import 'package:resume/page/pc_page.dart';

late Size ratio;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await loadCustomFonts();
  runApp(const MyApp());
}

Future<void> loadCustomFonts() async {
  final fontLoader = FontLoader('NotoSans');

  final boldData = await rootBundle.load('assets/fonts/NotoSans-Bold.woff');
  fontLoader.addFont(Future.value(ByteData.view(boldData.buffer)));

  final regularData = await rootBundle.load('assets/fonts/NotoSans-Regular.woff');
  fontLoader.addFont(Future.value(ByteData.view(regularData.buffer)));

  await fontLoader.load();
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

