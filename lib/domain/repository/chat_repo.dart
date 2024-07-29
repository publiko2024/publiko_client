import 'package:publiko_app/domain/model/chat_message.dart';

abstract interface class ChatRepo {
  Future<List<ChatMessage>> getExistedChatMessages();
  Future<ChatMessage> createChatMessage({required ChatMessage question});
  Future<void> saveChatMessage(ChatMessage message);
}
