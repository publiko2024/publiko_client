import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:publiko_app/data/data_source/chatbot/chatbot_api_mock.dart';
import 'package:publiko_app/data/repository/chat_repo_impl.dart';
import 'package:publiko_app/presentation/chatbot/chatbot_screen.dart';
import 'package:publiko_app/presentation/chatbot/chatbot_screen_view_model.dart';
import 'package:publiko_app/presentation/main/main_screen.dart';
import 'package:publiko_app/presentation/main/main_screen_view_model.dart';
import 'package:publiko_app/presentation/splash/splash_screen.dart';

class Routes {
  static final GoRouter router = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(
          path: '/splash',
          builder: (BuildContext context, GoRouterState state) =>
              const SplashScreen()),
      GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return ChangeNotifierProvider(
              create: (context) => MainScreenViewModel(),
              child: const MainScreen(),
            );
          }),
      GoRoute(
          path: '/chat',
          builder: (BuildContext context, GoRouterState state) {
            return ChangeNotifierProvider(
              create: (context) => ChatbotScreenViewModel(
                ChatRepoImpl(
                  ChatbotApiMock(),
                ),
              ),
              child: const ChatbotScreen(),
            );
          }),
    ],
  );
}
