import 'package:publiko_app/data/data_source/chatbot/chatbot_api.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:publiko_app/util/common_methods.dart';

class ChatbotApiImpl implements ChatbotApi {
  final String _baseUrl = 'http://34.47.74.81:8080';

  @override
  Future<String> sendMessage({required String message}) async {
    final url = Uri.parse('$_baseUrl/chat');
    try {
      final response = await http.post(
        url,
        body: message,
        headers: {'Content-Type': 'application/json'},
      );
      if (response.statusCode == 200) {
        return response.body;
      } else {
        throw Exception(
            'Failed to get chatbot answer. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error sending message: $e');
    }
  }

  @override
  Future<String> sendPicture({required XFile imageFile}) async {
    File file = File(imageFile.path);
    print(file.path);
    file = await _compressImage(file);

    final url = Uri.parse('$_baseUrl/multimodal');
    try {
      final request = http.MultipartRequest('POST', url);

      final multipartFile = await http.MultipartFile.fromPath(
        'file', // 서버에서 기대하는 필드 이름
        file.path,
      );
      print(multipartFile.filename);

      request.files.add(multipartFile);

      final response = await request.send();
      final responseBody = await response.stream.bytesToString();

      if (response.statusCode == 200) {
        return responseBody;
      } else {
        throw Exception(
            'Failed to get chatbot answer. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error sending image: $e');
    }
  }

  Future<File> _compressImage(File file) async {
    final filePath = file.path;
    final compressedFile = await FlutterImageCompress.compressWithFile(
      filePath,
      minWidth: 800,
      minHeight: 800,
      quality: 80,
      format: CompressFormat.png,
    );

    final tempFile = File('${filePath}_compressed.jpg');
    await tempFile.writeAsBytes(compressedFile!);
    return tempFile;
  }

  @override
  Future<String> sendPostPicture({required XFile imageFile}) async {
    // Load the asset as a file
    File file = await loadAssetAsFile(imageFile.path);

    final url = Uri.parse('$_baseUrl/multimodal');
    try {
      final request = http.MultipartRequest('POST', url);

      final multipartFile = await http.MultipartFile.fromPath(
        'file', // 서버에서 기대하는 필드 이름
        file.path,
      );

      request.files.add(multipartFile);

      final response = await request.send();
      final responseBody = await response.stream.bytesToString();

      if (response.statusCode == 200) {
        return responseBody;
      } else {
        throw Exception(
            'Failed to get chatbot answer. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error sending image: $e');
    }
  }
}
