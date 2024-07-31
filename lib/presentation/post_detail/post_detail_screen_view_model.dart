import 'dart:math';

import 'package:flutter/material.dart';
import 'package:publiko_app/domain/model/comment.dart';
import 'package:publiko_app/domain/model/post.dart';
import 'package:publiko_app/domain/repository/comment_repo.dart';
import 'package:publiko_app/domain/repository/post_repo.dart';

class PostDetailScreenViewModel with ChangeNotifier {
  final PostRepo _postRepo;
  final CommentRepo _commentRepo;
  PostDetailScreenViewModel(this._postRepo, this._commentRepo);

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

  @override
  void dispose() {
    _scrollController.dispose();
    _focusNode.dispose();
    _textController.dispose();
    super.dispose();
  }
}
