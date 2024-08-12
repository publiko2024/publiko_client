import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:publiko_app/domain/repository/chat_repo.dart';

class ChatbotPictureScreenViewModel with ChangeNotifier {
  final ChatRepo _chatRepo;
  late FlutterTts _flutterTts;
  ChatbotPictureScreenViewModel(this._chatRepo) {
    _flutterTts = FlutterTts();
    _initializeTtsSettings();
  }

  String _description = '';
  String get description => _description;

  bool _isSpeaking = false;
  bool get isSpeaking => _isSpeaking;

  XFile? _pickedImage;
  XFile? get pickedImage => _pickedImage;
  

  final ImagePicker _picker = ImagePicker();
  ImagePicker get imagePicker => _picker;

  Future<void> sendPicture() async {
    if ( _pickedImage == null) return;
    _description = '...';
    notifyListeners();
    _description =
        await _chatRepo.createImageDescription(imageFile: _pickedImage!);
    notifyListeners();
  }

  Future<void> getImageFromGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    _pickedImage = image;
    notifyListeners();
    await sendPicture();
    notifyListeners();
  }

  Future<void> getImageFromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    _pickedImage = image;
    notifyListeners();
    await sendPicture();
    notifyListeners();
  }

  void _initializeTtsSettings() async {
    await _flutterTts.setLanguage("ko-KR");
    await _flutterTts.setSpeechRate(0.5);
    await _flutterTts.setPitch(1.0);
  }

  Future<void> speakText() async {
    if (_isSpeaking || _description.isEmpty) {
      return;
    }
    _isSpeaking = true;
    notifyListeners();
    await _flutterTts.speak(_description);
  }

  Future<void> stopSpeaking() async {
    if (!_isSpeaking) {
      return;
    }
    await _flutterTts.stop();
    _isSpeaking = false;
    notifyListeners();
  }

  void refreshPage(){
    _pickedImage = null;
    _description = '...';
    notifyListeners();
  }

  @override
  void dispose() {
    _flutterTts.stop();
    super.dispose();
  }
}
