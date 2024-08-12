import 'package:flutter/material.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/constants/text_styles.dart';

class InputArea extends StatelessWidget {
  const InputArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultPaddingWidth),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: getHeight(10),),
          TextField(
            keyboardType: TextInputType.multiline,
            textInputAction: TextInputAction.newline,
            maxLines: 1,
            minLines: 1, //이걸로 사이즈 조절
            decoration: InputDecoration(
              hintText: '제목을 입력해주세요',
              hintStyle: TextStyles.hintText,
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xffe5e5ec)),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xffe5e5ec)),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xffe5e5ec)),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
          ),
          SizedBox(height: getHeight(10),),
          TextField(
            keyboardType: TextInputType.multiline,
            textInputAction: TextInputAction.newline,
            maxLines: 8,
            minLines: 8, //이걸로 사이즈 조절
            decoration: InputDecoration(
              hintText: "무슨 이야기를 나누고 싶으세요? 자유롭게 작성해주세요!",
              hintStyle: TextStyles.hintText,
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xffe5e5ec)),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xffe5e5ec)),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xffe5e5ec)),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
          ),
        ],
            ),
      ),
    );
  }
}
