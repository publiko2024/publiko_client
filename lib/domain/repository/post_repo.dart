import 'package:publiko_app/domain/model/post.dart';

abstract interface class PostRepo {
  Future<void> createPost();
  Future<List<Post>> getPosts();
  Future<Post> getPost(int postId);
  Future<List<Post>> getPopularPosts();
  Future<List<Post>> getRecentPosts();
}
