import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:publiko_app/constants/color_styles.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/constants/text_styles.dart';

class ChatbotAnswerBubble extends StatelessWidget {
  final String answer;
  const ChatbotAnswerBubble({
    super.key,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: getWidth(34),
                height: getHeight(34),
                padding: EdgeInsets.all(getWidth(5)),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorStyles.white, // 하얀색 배경
                ),
                child: Image.asset(
                  'assets/images/kobot.png',
                  fit: BoxFit.cover, // 이미지가 동그라미에 맞게 잘리면서 꽉 차도록 설정
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              CircleAvatar(
                  backgroundColor: ColorStyles.white,
                  radius: getWidth(17),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.speaker_2_fill,
                        color: ColorStyles.secondary,
                      )))
            ],
          ),
          SizedBox(
            width: getWidth(10),
          ),
          Container(
            constraints: BoxConstraints(
              maxWidth: getWidth(285),
            ),
            padding: EdgeInsets.all(getWidth(10)),
            decoration: ShapeDecoration(
              color: ColorStyles.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Text(
              answer,
              style: TextStyles.chatbotText,
            ),
          ),
        ],
      ),
    );
  }
}
