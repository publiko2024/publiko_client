import 'package:flutter/material.dart';
import 'package:publiko_app/domain/model/chat_message.dart';
import 'package:publiko_app/domain/repository/chat_repo.dart';

class ChatbotScreenViewModel with ChangeNotifier {
  final ChatRepo _chatRepo;

  ChatbotScreenViewModel(this._chatRepo) {
    fetchExistChatMessages();
  }

  final TextEditingController _textController = TextEditingController();
  TextEditingController get textController => _textController;

  final FocusNode _focusNode = FocusNode();
  FocusNode get focusNode => _focusNode;

  final ScrollController _scrollController = ScrollController();
  ScrollController get scrollController => _scrollController;

  final List<ChatMessage> _messages = [];
  List<ChatMessage> get messages => _messages;

  bool _isWaitingAnswer = false;
  bool get isWaitingAnswer => _isWaitingAnswer;

  void fetchExistChatMessages() async {
    // _messages = await _chatRepo.getExistedChatMessages();
  }

  Future<void> sendMessage() async {
    if (_isWaitingAnswer) return;

    String questionText = _textController.text;
    _textController.clear();
    _focusNode.unfocus();

    ChatMessage question = ChatMessage(
      name: 'user',
      message: questionText,
    );

    _messages.insert(0, question);
    _isWaitingAnswer = true;
    notifyListeners();

    //일단 가짜 응답 삽입
    ChatMessage mockAnswer =
        const ChatMessage(name: 'chatbot', message: ' ... ');
    _messages.insert(0, mockAnswer);
    notifyListeners();

    ChatMessage chatbotAnswer =
        await _chatRepo.createChatMessage(question: question);
    _messages[0] = chatbotAnswer; // 응답이 오면 진짜 응답으로 교체
    _isWaitingAnswer = false;
    notifyListeners();
  }

  @override
  void dispose() {
    _textController.dispose();
    _focusNode.dispose();
    super.dispose();
  }
}
