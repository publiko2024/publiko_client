import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:publiko_app/constants/color_styles.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/constants/text_styles.dart';
import 'package:publiko_app/ui_common_components/default_btn.dart';

class RecommandQuestion extends StatelessWidget {
  const RecommandQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getWidth(30), vertical: defaultPaddingHeight),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/kobot.png',
              height: getHeight(150),
              fit: BoxFit.fitHeight,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPaddingHeight),
              child: Text(
                '안녕하세요, 코봇에게 무엇이든 물어보세요',
                style: TextStyles.boldText,
              ),
            ),
            _questionBox('이번 달 채용공고 알려줘'),
            _questionBox('올해 진행 되는 문화 행사 알려줘'),
            _questionBox('서울에 점자 도서 대여할 수 있는 곳 알려줘'),
            _questionBox('주변에 예약할 수 있는 운동 센터 알려줘'),
            SizedBox(height: getHeight(20),),
            DefaultBtn(text: '사진 묘사하기', onPressed: (){
              context.go('/chatbotPicture');
            },
            btnColor: ColorStyles.secondary,
            width: getWidth(170),
            hasIcon: true,
            iconPath: 'assets/icons/picture.svg',
            iconSize: getWidth(30),
            )
          ],
        ),
      ),
    );
  }

  Widget _questionBox(String text) {
    return Container(
      width: getWidth(290),
      height: getHeight(50),
      padding: EdgeInsets.all(getHeight(15)),
      margin: EdgeInsets.symmetric(vertical: getHeight(5)),
      decoration: ShapeDecoration(
        color: ColorStyles.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: Text(
        text,
        style: TextStyles.hintText,
      ),
    );
  }
}
