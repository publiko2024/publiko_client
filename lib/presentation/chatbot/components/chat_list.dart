import 'package:flutter/material.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/domain/model/chat_message.dart';
import 'package:publiko_app/presentation/chatbot/components/chat_bubble.dart';
import 'package:publiko_app/presentation/chatbot/components/chatbot_answer_bubble.dart';

class ChatList extends StatelessWidget {
  final ScrollController scrollController;
  final List<ChatMessage> messages;

  const ChatList({
    super.key,
    required this.scrollController,
    required this.messages,
  });

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: scrollController,
      thickness: 3,
      child: ListView.builder(
        controller: scrollController,
        reverse: true,
        padding: EdgeInsets.symmetric(
            horizontal: defaultPaddingWidth, vertical: getHeight(5)),
        itemCount: messages.length,
        itemBuilder: (BuildContext context, int index) {
          return (messages[index].name == 'user')
              ? Padding(
                  padding: EdgeInsets.symmetric(vertical: getHeight(5)),
                  child: ChatBubble(message: messages[index].message),
                )
              : Padding(
                  padding: EdgeInsets.symmetric(vertical: getHeight(5)),
                  child: ChatbotAnswerBubble(answer: messages[index].message,),
                );
        },
      ),
    );
  }
}
