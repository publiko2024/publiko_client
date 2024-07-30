import 'dart:math';

import 'package:flutter/material.dart';
import 'package:publiko_app/domain/model/comment.dart';
import 'package:publiko_app/domain/model/post.dart';
import 'package:publiko_app/domain/repository/comment_repo.dart';
import 'package:publiko_app/domain/repository/post_repo.dart';

class CommunityDetailScreenViewModel with ChangeNotifier {
  final PostRepo _postRepo;
  final CommentRepo _commentRepo;
  CommunityDetailScreenViewModel(this._postRepo, this._commentRepo);

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

  void fetchPost({required int postId}) async {
    _post = await _postRepo.getPost(postId);
    notifyListeners();
  }

  void sendComment() async {
    Comment createdComment = await _commentRepo.createComment(
        postId: _post.id,
        nickname: '새싹톤참가자${Random().nextInt(100)}',
        content: _textController.text);
    _post.comments.add(createdComment);
    notifyListeners();
  }
}
