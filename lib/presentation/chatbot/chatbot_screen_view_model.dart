import 'package:flutter/material.dart';
import 'package:publiko_app/domain/model/chat_message.dart';
import 'package:publiko_app/domain/repository/chat_repo.dart';

class ChatbotScreenViewModel with ChangeNotifier {
  final ChatRepo _chatRepo;

  ChatbotScreenViewModel(this._chatRepo) {
    fetchExistChatMessages();
  }

  List<ChatMessage> _messages = [];
  List<ChatMessage> get messages => _messages;

  // 없어도 될지도..
  bool _isInitChatRoom = true;
  bool get isInitChatRoom => _isInitChatRoom;

  String _inputText = '';
  String get inputText => _inputText;

  void fetchExistChatMessages() async {
    // _messages = await _chatRepo.getExistedChatMessages();
    _isInitChatRoom = (_messages.isEmpty) ? true : false;
  }

  void setInputText(String text) {
    _inputText = text;
    print(_inputText);
  }

  Future<void> sendMessage() async {
    _messages.add(ChatMessage(name: 'user', message: _inputText));
    notifyListeners();
  }
}
