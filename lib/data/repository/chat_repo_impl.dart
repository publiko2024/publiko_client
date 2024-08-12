import 'package:image_picker/image_picker.dart';
import 'package:publiko_app/data/data_source/chatbot/chatbot_api.dart';
import 'package:publiko_app/domain/model/chat_message.dart';
import 'package:publiko_app/domain/repository/chat_repo.dart';

class ChatRepoImpl implements ChatRepo {
  final ChatbotApi _chatbotApi;
  const ChatRepoImpl(this._chatbotApi);
  @override
  Future<ChatMessage> createChatMessage({required ChatMessage question}) async {
    final String answer =
        await _chatbotApi.sendMessage(message: question.message);
    final ChatMessage answerMessage =
        ChatMessage(name: 'chatbot', message: answer);

    return answerMessage;
  }

  @override
  Future<String> createImageDescription({required XFile imageFile}) async {
    //사실 모델을 안써서 레포쓰는 의미는 없지만 추후 리팩을 위해 틀만 사용
    final String description =
        await _chatbotApi.sendPicture(imageFile: imageFile);
    return description;
  }

  @override
  Future<String> createPostImageDescription({required XFile imageFile}) async {
    //사실 모델을 안써서 레포쓰는 의미는 없지만 추후 리팩을 위해 틀만 사용
    final String description =
        await _chatbotApi.sendPostPicture(imageFile: imageFile);
    return description;
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
