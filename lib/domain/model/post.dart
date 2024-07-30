import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:publiko_app/domain/model/comment.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required int id,
    required String nickname,
    required String title,
    required String content,
    required DateTime createdAt,
    required int viewCount,
    required int commentCount,
    required List<Comment> comments,
    required List<String> imageUrls,
  }) = _Post;

  factory Post.fromJson(Map<String, Object?> json) => _$PostFromJson(json);
}
