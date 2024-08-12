import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:publiko_app/domain/model/chat_message.dart';
import 'package:publiko_app/domain/repository/chat_repo.dart';

class ChatbotScreenViewModel with ChangeNotifier {
  final ChatRepo _chatRepo;
  late FlutterTts _flutterTts;

  ChatbotScreenViewModel(this._chatRepo) {
    _flutterTts = FlutterTts();
    fetchExistChatMessages();
    _initializeTtsSettings();
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

  bool _isSpeaking = false;
  bool get isSpeaking => _isSpeaking;

  void fetchExistChatMessages() async {
    // _messages = await _chatRepo.getExistedChatMessages();
  }

  void _initializeTtsSettings() async {
    await _flutterTts.setLanguage("ko-KR");
    await _flutterTts.setSpeechRate(0.5);
    await _flutterTts.setPitch(1.0);
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

  Future<void> speakText(String text) async {
    if (_isSpeaking) {
      return;
    }
    _isSpeaking = true;
    notifyListeners();
    await _flutterTts.speak(text);
  }

  Future<void> stopSpeaking() async {
    if (!_isSpeaking) {
      return;
    }
    await _flutterTts.stop();
    _isSpeaking = false;
    notifyListeners();
  }

  @override
  void dispose() {
    _textController.dispose();
    _focusNode.dispose();
    _flutterTts.stop();
    super.dispose();
  }
}
