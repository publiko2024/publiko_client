import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:publiko_app/domain/repository/post_repo.dart';
import 'package:image_picker/image_picker.dart';

class PostCreateScreenViewModel with ChangeNotifier {
  final PostRepo _postRepo;
  PostCreateScreenViewModel(this._postRepo);

  final FocusNode _focusNode = FocusNode();
  FocusNode get focusNode => _focusNode;

  final List<XFile> _pickedIamges = [];
  List<XFile> get pickedImages => _pickedIamges;

  final ImagePicker _picker = ImagePicker();
  ImagePicker get imagePicker => _picker;

  final String _title = '';
  String get title => _title;

  final String _content = '';
  String get content => _content;

  void createPost(BuildContext context) async {}

  //갤러리에서 이미지 가져오는 함수
  void getImageFromGallery() async {
    if (_pickedIamges.length >= 6) {
      Fluttertoast.showToast(
        msg: "사진은 최대 6장까지 올릴 수 있어요",
        toastLength: Toast.LENGTH_SHORT,
      );
    } else {
      final List<XFile>? images = await _picker.pickMultiImage();
      if (images != null) {
        if (images.length + _pickedIamges.length > 6) {
          int remain = 6 - _pickedIamges.length;
          _pickedIamges.addAll(images.getRange(0, remain));
          Fluttertoast.showToast(
            msg: "사진은 최대 6장까지 올릴 수 있어요",
            toastLength: Toast.LENGTH_SHORT,
          );
        } else if (images.length + _pickedIamges.length <= 6) {
          _pickedIamges.addAll(images);
        }
      }
    }
    notifyListeners();
  }

  void getImageFromCamera() async {
    if (_pickedIamges.length >= 6) {
      Fluttertoast.showToast(
        msg: '사진은 최대 6장까지 올릴 수 있어요',
        toastLength: Toast.LENGTH_SHORT,
      );
    } else {
      final XFile? image = await _picker.pickImage(source: ImageSource.camera);
      if (image != null) {
        _pickedIamges.add(image);
      }
    }
    notifyListeners();
  }

  void removeImage(int index) {
    _pickedIamges.removeAt(index);
    notifyListeners();
  }
}
