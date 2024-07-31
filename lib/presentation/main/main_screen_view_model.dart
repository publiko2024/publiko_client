import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:publiko_app/data/repository/post_repo_impl.dart';
import 'package:publiko_app/presentation/post_main/post_main_screen.dart';
import 'package:publiko_app/presentation/post_main/post_main_screen_view_model.dart';
import 'package:publiko_app/presentation/home/home_screen.dart';
import 'package:publiko_app/presentation/home/home_screen_view_model.dart';
import 'package:publiko_app/presentation/profile/profile_main_screen.dart';

class MainScreenViewModel with ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  List<Widget> _screens = [];
  List<Widget> get screens => _screens;

  MainScreenViewModel() {
    _screens = [
      ChangeNotifierProvider(
        create: (_) => HomeScreenViewModel(
          PostRepoImpl(),
        ),
        child: const HomeScreen(),
      ),
      ChangeNotifierProvider(
        create: (_) => PostMainScreenViewModel(
          PostRepoImpl(),
        ),
        child: const PostMainScreen(),
      ),
      const ProfileMainScreen(),
    ];
  }

  void changeIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void gotoChatRoom(BuildContext context) {
    context.push('/chat');
  }
}
