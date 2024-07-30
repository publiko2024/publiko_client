import 'package:publiko_app/domain/model/comment.dart';
import 'package:publiko_app/domain/repository/comment_repo.dart';

class CommentRepoImpl implements CommentRepo {
  @override
  Future<Comment> createComment(
      {required int postId,
      required String nickname,
      required String content}) async {
    final createdComment = Comment(
      id: 100,
      nickname: nickname,
      content: content,
      createdAt: DateTime.now(),
    );
    return createdComment;
  }
}
