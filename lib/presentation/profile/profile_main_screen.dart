import 'package:flutter/material.dart';
import 'package:publiko_app/constants/color_styles.dart';
import 'package:publiko_app/constants/text_styles.dart';
import 'package:publiko_app/presentation/profile/components/menu_list.dart';

class ProfileMainScreen extends StatelessWidget {
  const ProfileMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.white,
      appBar: AppBar(
        backgroundColor: ColorStyles.white,
        title: Text(
          '마이 페이지',
          style: TextStyles.appBarText,
        ),
        centerTitle: true,
      ),
      body: const MenuList(),
    );
  }
}
