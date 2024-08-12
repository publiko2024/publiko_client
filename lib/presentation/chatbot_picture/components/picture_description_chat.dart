import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/presentation/chatbot_picture/chatbot_picture_screen_view_model.dart';
import 'package:publiko_app/presentation/chatbot_picture/components/description_bubble.dart';
import 'package:publiko_app/presentation/chatbot_picture/components/more_btns.dart';

class PictureDescriptionChat extends StatelessWidget {
  const PictureDescriptionChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ChatbotPictureScreenViewModel>();
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(defaultPaddingWidth),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0), // 둥근 모서리 설정
              child: Image.file(
                File(viewModel.pickedImage!.path),
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: getHeight(10),
            ),
            const DescriptionBubble(),
            SizedBox(
              height: getHeight(20),
            ),
            (viewModel.description.length<5)
                ? const SizedBox()
                : const MoreBtns()
          ],
        ),
      ),
    );
  }
}
