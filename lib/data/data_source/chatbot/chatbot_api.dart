import 'package:image_picker/image_picker.dart';

abstract interface class ChatbotApi {
  Future<String> sendMessage({required String message});
  Future<String> sendPicture({required XFile imageFile});
  Future<String> sendPostPicture({required XFile imageFile});
}
