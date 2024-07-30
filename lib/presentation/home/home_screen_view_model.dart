import 'package:flutter/material.dart';
import 'package:publiko_app/domain/model/post.dart';
import 'package:publiko_app/domain/repository/post_repo.dart';

class HomeScreenViewModel with ChangeNotifier {
  final PostRepo _postRepo;
  HomeScreenViewModel(this._postRepo) {
    fetchPopularPosts();
  }

  final List<String> _bannerImageUrlList = [
    'assets/images/banner1.png',
    'assets/images/banner2.png',
    'assets/images/banner3.png',
  ];
  List<String> get bannerImageUrlList => _bannerImageUrlList;

  List<Post> _popularPosts = [];
  List<Post> get popularPosts => _popularPosts;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void fetchPopularPosts() async {
    _isLoading = true;
    notifyListeners();
    final posts = await _postRepo.getPosts();
    posts.sort((a, b) => b.viewCount.compareTo(a.viewCount));
    _popularPosts = posts.take(5).toList();
    _isLoading = false;
    notifyListeners();
  }
}
