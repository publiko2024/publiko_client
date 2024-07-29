import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:publiko_app/constants/color_styles.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/constants/text_styles.dart';
import 'package:publiko_app/presentation/chatbot/chatbot_screen_view_model.dart';
import 'package:publiko_app/presentation/chatbot/components/recommand_question.dart';

class ChatbotScreen extends StatelessWidget {
  const ChatbotScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ChatbotScreenViewModel>();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(), //키보드 외부 영역 터치 시 키보드 내려감,
      child: Scaffold(
        backgroundColor: ColorStyles.chatRoomBackground,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
              padding: EdgeInsets.only(left: defaultPaddingWidth),
              onPressed: () {
                context.pop();
              },
              icon: const Icon(CupertinoIcons.back)),
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
          actions: [
            IconButton(
                padding: EdgeInsets.only(right: defaultPaddingWidth),
                onPressed: () {},
                icon: const Icon(CupertinoIcons.ellipsis_vertical))
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: viewModel.messages.isEmpty
                    ? const RecommandQuestion()
                    : Text('notEmpty')),
            Container(
              width: double.infinity,
              height: getHeight(100),
              decoration: BoxDecoration(color: ColorStyles.primary),
              child: TextField(),
            )
          ],
        ),
      ),
    );
  }
}
