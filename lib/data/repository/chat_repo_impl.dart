import 'package:publiko_app/domain/model/chat_message.dart';
import 'package:publiko_app/domain/repository/chat_repo.dart';

class ChatRepoImpl implements ChatRepo {
  @override
  Future<ChatMessage> createChatMessage({required ChatMessage question}) {
    // TODO: implement createChatMessage
    throw UnimplementedError();
  }

  @override
  Future<List<ChatMessage>> getExistedChatMessages() {
    // TODO: implement getExistedChatMessages
    throw UnimplementedError();
  }

  @override
  Future<void> saveChatMessage(ChatMessage message) {
    // TODO: implement saveChatMessage
    throw UnimplementedError();
  }
}
