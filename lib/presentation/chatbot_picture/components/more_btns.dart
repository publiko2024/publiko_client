import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:publiko_app/constants/color_styles.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/presentation/chatbot_picture/chatbot_picture_screen_view_model.dart';
import 'package:publiko_app/ui_common_components/default_btn.dart';

class MoreBtns extends StatelessWidget {
  const MoreBtns({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultBtn(
          text: '다른 사진 묘사하기',
          onPressed: () {
            final viewModel = context.read<ChatbotPictureScreenViewModel>();
             viewModel.refreshPage();
          },
          btnColor: ColorStyles.secondary,
        ),
        SizedBox(
          height: getHeight(10),
        ),
        DefaultBtn(
          text: '챗봇으로 돌아가기',
          onPressed: () {
             
            context.go('/chat');
          },
        ),
      ],
    );
  }
}
