import 'package:flutter/material.dart';
import 'package:publiko_app/constants/color_styles.dart';
import 'package:publiko_app/constants/size_config.dart';

abstract class TextStyles {
  static TextStyle custom(double fontSize, [Color? fontColor, double? height]) {
    return TextStyle(
      color: fontColor ?? ColorStyles.black,
      fontSize: getHeight(fontSize),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      height: 0,
    );
  }

  static TextStyle appBarText = TextStyle(
    fontSize: getHeight(20),
    color: ColorStyles.black,
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w700,
  );

  static TextStyle boldText = TextStyle(
    fontSize: getHeight(16),
    color: ColorStyles.black,
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w600,
  );

  static TextStyle hintText = TextStyle(
    fontSize: getHeight(14),
    color: ColorStyles.gray3,
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w600,
  );

  static TextStyle chatText = TextStyle(
    fontSize: getHeight(14),
    color: ColorStyles.white,
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w400,
  );

  static TextStyle chatbotText = TextStyle(
    fontSize: getHeight(14),
    color: ColorStyles.black,
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w600,
  );

  static TextStyle postBodyText = TextStyle(
    fontSize: getHeight(14),
    color: ColorStyles.black,
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w400,
  );

  static TextStyle createdAtText = TextStyle(
    fontSize: getHeight(12),
    color: ColorStyles.gray2,
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w400,
  );

  static TextStyle secondaryColorText = TextStyle(
    fontSize: getHeight(14),
    color: ColorStyles.secondary,
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w400,
  );
   static TextStyle nicknameText = TextStyle(
    fontSize: getHeight(14),
    color: ColorStyles.primary,
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w600,
  );
}
