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
    fontSize: getHeight(18),
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
  // static TextStyle headerTextBold = boldStyle(getHeight(30));
  // static TextStyle largeTextBold = boldStyle(getHeight(20));
  // static TextStyle mediumTextBold = boldStyle(getHeight(18));
  // static TextStyle normalTextBold = boldStyle(getHeight(16));
  // static TextStyle smallTextBold = boldStyle(getHeight(14));
}