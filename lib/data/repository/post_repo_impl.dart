import 'package:publiko_app/constants/dummy_data.dart';
import 'package:publiko_app/domain/model/post.dart';
import 'package:publiko_app/domain/repository/post_repo.dart';

class PostRepoImpl implements PostRepo {
  @override
  Future<List<Post>> getPosts() async {
    List<Post> data = dummyPosts;
    return data;
  }

  @override
  Future<List<Post>> getPopularPosts() async {
    // TODO: implement getRecentPosts
    throw UnimplementedError();
  }

  @override
  Future<List<Post>> getRecentPosts() async {
    // TODO: implement getRecentPosts
    throw UnimplementedError();
  }

  @override
  Future<Post> getPost(int postId) async {
    final post = dummyPosts.firstWhere(
      (post) => post.id == postId,
    );
    return post;
  }
  
  @override
  Future<void> createPost() {
    // TODO: implement createPost
    throw UnimplementedError();
  }
}
