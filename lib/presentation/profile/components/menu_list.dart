import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:publiko_app/presentation/profile/components/menu.dart';
import 'package:publiko_app/ui_common_components/horizontal_divider.dart';

class MenuList extends StatelessWidget {
  const MenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Menu(text: '닉네임 수정', onTap: () {}),
        const HorizontalDivider(thickness: 1),
        Menu(text: '내가 쓴 글', onTap: () {}),
        const HorizontalDivider(thickness: 1),
        Menu(text: '내가 쓴 댓글', onTap: () {}),
        const HorizontalDivider(thickness: 8),
        Menu(text: '장애 유형 분류', onTap: () {}),
        const HorizontalDivider(thickness: 1),
        Menu(text: '보조 인터페이스 설정', onTap: () {}),
        const HorizontalDivider(thickness: 8),
        Menu(text: '초대하기', onTap: () {}),
        const HorizontalDivider(thickness: 1),
        Menu(text: '로그아웃', onTap: () {}),
      ],
    );
  }
}
