import 'package:flutter/material.dart';
import 'package:publiko_app/domain/model/post.dart';
import 'package:publiko_app/domain/repository/post_repo.dart';

class CommunityMainScreenViewModel with ChangeNotifier {
  final PostRepo _postRepo;
  CommunityMainScreenViewModel(this._postRepo) {
    fetchPosts();
    sortPosts(CommunityTabType.recent);
  }

  List<Post> _posts = [];
  List<Post> get posts => _posts;

  CommunityTabType _tabType = CommunityTabType.recent;
  CommunityTabType get tabType => _tabType;

  void fetchPosts() async {
    _posts = await _postRepo.getPosts();
    sortPosts(_tabType);
  }

  void sortPosts(CommunityTabType type) {
    _tabType = type;
    switch (_tabType) {
      case CommunityTabType.recent:
        _posts.sort((a, b) => b.createdAt.compareTo(a.createdAt));
        notifyListeners();
      case CommunityTabType.popular:
        _posts.sort((a, b) => b.viewCount.compareTo(a.viewCount));
        notifyListeners();
    }
  }
}

enum CommunityTabType { popular, recent }
