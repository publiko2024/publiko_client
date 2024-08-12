import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:publiko_app/constants/color_styles.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/constants/text_styles.dart';
import 'package:publiko_app/presentation/chatbot_picture/chatbot_picture_screen_view_model.dart';
import 'package:publiko_app/presentation/chatbot_picture/components/picture_description_chat.dart';
import 'package:publiko_app/ui_common_components/default_btn.dart';

class ChatbotPictureScreen extends StatelessWidget {
  const ChatbotPictureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ChatbotPictureScreenViewModel>();
    return Scaffold(
      backgroundColor: ColorStyles.chatRoomBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
       
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: getWidth(25),
              height: getHeight(25),
            ),
            Text(
              '코봇',
              style: TextStyles.appBarText,
            )
          ],
        ),
      ),
      body: (viewModel.pickedImage == null)
          ? Padding(
              padding: EdgeInsets.all(defaultPaddingWidth),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  DefaultBtn(
                    text: '카메라로 사진 찍기',
                    onPressed: () {
                      viewModel.getImageFromCamera();
                    },
                    btnColor: ColorStyles.secondary,
                    height: getHeight(80),
                    fontSize: getHeight(18),
                    hasIcon: true,
                    iconPath: 'assets/icons/camera.svg',
                    iconSize: getWidth(30),
                  ),
                  SizedBox(
                    height: getHeight(20),
                  ),
                  DefaultBtn(
                    text: '앨범에서 사진 가져오기',
                    onPressed: () {
                      viewModel.getImageFromGallery();
                    },
                    btnColor: ColorStyles.secondary,
                    height: getHeight(80),
                    fontSize: getHeight(18),
                    hasIcon: true,
                    iconPath: 'assets/icons/picture.svg',
                    iconSize: getWidth(30),
                  ),
                   SizedBox(
                    height: getHeight(20),
                  ),
                  DefaultBtn(
                    text: '챗봇으로 돌아가기',
                    onPressed: () {
                      context.go('/chat');
                    },
                    height: getHeight(80),
                    fontSize: getHeight(18),
                    
                  ),
                 
                  SizedBox(
                    height: getHeight(30),
                  ),
                ],
              ),
            )
          : const PictureDescriptionChat(),
    );
  }
}
