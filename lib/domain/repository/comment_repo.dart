import 'package:publiko_app/domain/model/comment.dart';

abstract interface class CommentRepo {
  Future<Comment> createComment({
    required int postId,
    required String nickname,
    required String content,
  });
}
