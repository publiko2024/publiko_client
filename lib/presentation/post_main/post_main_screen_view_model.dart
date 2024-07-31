import 'package:flutter/material.dart';
import 'package:publiko_app/domain/model/post.dart';
import 'package:publiko_app/domain/repository/post_repo.dart';

class PostMainScreenViewModel with ChangeNotifier {
  final PostRepo _postRepo;
  PostMainScreenViewModel(this._postRepo) {
    fetchPosts();
    sortPosts(PostTabType.recent);
  }

  List<Post> _posts = [];
  List<Post> get posts => _posts;

  PostTabType _tabType = PostTabType.recent;
  PostTabType get tabType => _tabType;

  void fetchPosts() async {
    _posts = await _postRepo.getPosts();
    sortPosts(_tabType);
  }

  void sortPosts(PostTabType type) {
    _tabType = type;
    switch (_tabType) {
      case PostTabType.recent:
        _posts.sort((a, b) => b.createdAt.compareTo(a.createdAt));
        notifyListeners();
      case PostTabType.popular:
        _posts.sort((a, b) => b.viewCount.compareTo(a.viewCount));
        notifyListeners();
    }
  }
}

enum PostTabType { popular, recent }
