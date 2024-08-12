import 'package:image_picker/image_picker.dart';
import 'package:publiko_app/domain/model/chat_message.dart';

abstract interface class ChatRepo {
  Future<List<ChatMessage>> getExistedChatMessages();
  Future<ChatMessage> createChatMessage({required ChatMessage question});
  Future<String> createImageDescription({required XFile imageFile});
  Future<String> createPostImageDescription({required XFile imageFile});
  Future<void> saveChatMessage(ChatMessage message);
}
