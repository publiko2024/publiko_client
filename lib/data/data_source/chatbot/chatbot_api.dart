import 'package:publiko_app/domain/model/chat_message.dart';

abstract interface class ChatbotApi{
  Future<ChatMessage> sendMessage({required String message});
}