import 'package:flutter/material.dart';

import '../config/color.dart';
import '../config/font.dart';
import '../main.dart';
import '../widget/banner_widget.dart';

class MobScreen extends StatelessWidget {
  const MobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ResumeColors.background,
      /// 중앙 정렬을 위해 Row로 감싸 양 옆에 SizedBox를 주고 spaceBetween을 주었습니다.
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: ratio.height * 100,
              ),
              Image.asset(
                "assets/images/mainImage.png",
                width: ratio.width * 638,
                height: ratio.width * 688,
              ),
              /// 맨 상단 자기소개 및 프로필 이미지 Row
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "안녕하세요. 새로운 도전을\n즐기는 개발자 장영하입니다.",
                        style: KR.mobtitle,
                      ),
                      Text(
                        "내가 만들고자 하는 것이 아닌, 수요자들의 수요에 기반한 개발을 합니다.\n"
                            "주로 모바일 어플리케이션 엔지니어링을 하며 인공지능과 PM 업무에도 흥미가 있습니다.",
                        style: KR.mobsubtitle,
                      ),
                      SizedBox(height: ratio.height * 5,),
                      ///이메일
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.email_outlined,
                            color: ResumeColors.subtitlecolor,
                            size: ratio.width * 24,
                          ),
                          SizedBox(
                            width: ratio.width * 5,
                          ),
                          Text(
                            "claude012@aiia-gcu.com",
                            style: KR.mobsubtitle,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              /// 하단 배너에 관련된 Row
              SizedBox(
                height: ratio.height * 10,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          banner(title: "Github", link: 'https://github.com/kanade012',),
                          SizedBox(width: ratio.width * 24,),
                          banner(title: "LinkedIn", link: 'https://www.linkedin.com/in/claudechang/',),
                        ],
                      ),
                      SizedBox(height: ratio.height * 7,),
                      Row(
                        children: [
                          banner(title: "Velog", link: 'https://velog.io/@wkddudgk4869/posts',),
                          SizedBox(width: ratio.width * 24,),
                          banner(title: "Resume", link: 'https://drive.google.com/file/d/1eqMiLd1eih281o-cDUbc1sGImoJCFTe6/view?usp=drive_link',),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox()
        ],
      ),
    );
  }
}
