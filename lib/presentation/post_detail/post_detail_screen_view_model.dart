import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:publiko_app/domain/model/comment.dart';
import 'package:publiko_app/domain/model/post.dart';
import 'package:publiko_app/domain/repository/chat_repo.dart';
import 'package:publiko_app/domain/repository/comment_repo.dart';
import 'package:publiko_app/domain/repository/post_repo.dart';

class PostDetailScreenViewModel with ChangeNotifier {
  final PostRepo _postRepo;
  final CommentRepo _commentRepo;
  final ChatRepo _chatRepo;
  late FlutterTts _flutterTts;
  PostDetailScreenViewModel(this._postRepo, this._commentRepo, this._chatRepo) {
    _flutterTts = FlutterTts();
    _initializeTtsSettings();
  }

  Post _post = Post(
      id: -1,
      nickname: 'nickname',
      title: 'title',
      content: 'content',
      createdAt: DateTime.now(),
      viewCount: -1,
      commentCount: -1,
      comments: [],
      imageUrls: []);

  Post get post => _post;

  final TextEditingController _textController = TextEditingController();
  TextEditingController get textController => _textController;

  final FocusNode _focusNode = FocusNode();
  FocusNode get focusNode => _focusNode;

  final ScrollController _scrollController = ScrollController();
  ScrollController get scrollController => _scrollController;

  bool _isTitleVisibleInAppBar = false;
  bool get isTitleVisibleInAppBar => _isTitleVisibleInAppBar;

  void _initializeTtsSettings() async {
    await _flutterTts.setLanguage("ko-KR");
    await _flutterTts.setSpeechRate(0.5);
    await _flutterTts.setPitch(1.0);
  }

  void onScroll() {
    // 스크롤 오프셋에 따라 타이틀의 표시 여부 결정 (예: 50px)
    _isTitleVisibleInAppBar = _scrollController.offset > 10;
    notifyListeners();
  }

  void fetchPost({required int postId}) async {
    _post = await _postRepo.getPost(postId);
    notifyListeners();
  }

  void sendComment() async {
    Comment createdComment = await _commentRepo.createComment(
        postId: _post.id,
        nickname: '새싹톤참가자${Random().nextInt(100)}',
        content: _textController.text);
    _post = _post.copyWith(
      comments: List.from(_post.comments)..add(createdComment),
    );
    _textController.clear();
    _focusNode.unfocus();
    scrollToEnd();
    notifyListeners();
  }

  void scrollToEnd() async {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.animateTo(_scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 400),
          curve: Curves.fastOutSlowIn);
    });
  }

  Future<void> describePicture(String imageUrl) async {
    XFile imageFile = XFile(imageUrl);
    await _flutterTts.speak('이미지를 분석 중 입니다.');
    String description =
        await _chatRepo.createPostImageDescription(imageFile: imageFile);
    await _flutterTts.speak(description);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _focusNode.dispose();
    _textController.dispose();
    super.dispose();
  }
}
