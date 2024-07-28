import 'package:flutter/material.dart';
import 'package:publiko_app/presentation/chatbot/chatbot_screen.dart';
import 'package:publiko_app/presentation/community_main/community_main_screen.dart';
import 'package:publiko_app/presentation/home/home_screen.dart';
import 'package:publiko_app/presentation/profile/profile_main_screen.dart';

class MainScreenViewModel with ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  List<Widget> _screens = [];
  List<Widget> get screens => _screens;

  MainScreenViewModel() {
    _screens = [
      const HomeScreen(),
      const ChatbotScreen(),
      const CommunityMainScreen(),
      const ProfileMainScreen(),
    ];
  }

  void changeIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
