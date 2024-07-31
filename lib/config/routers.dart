import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:publiko_app/data/data_source/chatbot/chatbot_api_impl.dart';
import 'package:publiko_app/data/repository/chat_repo_impl.dart';
import 'package:publiko_app/data/repository/comment_repo_impl.dart';
import 'package:publiko_app/data/repository/post_repo_impl.dart';
import 'package:publiko_app/presentation/chatbot/chatbot_screen.dart';
import 'package:publiko_app/presentation/chatbot/chatbot_screen_view_model.dart';
import 'package:publiko_app/presentation/post_create/post_create_screen.dart';
import 'package:publiko_app/presentation/post_create/post_create_screen_view_model.dart';
import 'package:publiko_app/presentation/post_detail/post_detail_screen.dart';
import 'package:publiko_app/presentation/post_detail/post_detail_screen_view_model.dart';
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
                  ChatbotApiImpl(),
                ),
              ),
              child: const ChatbotScreen(),
            );
          }),
      GoRoute(
          path: '/postDetail',
          builder: (BuildContext context, GoRouterState state) {
            final int postId = state.extra as int;
            return ChangeNotifierProvider(
              create: (context) =>
                  PostDetailScreenViewModel(PostRepoImpl(), CommentRepoImpl()),
              child: PostDetailScreen(postId: postId),
            );
          }),
      GoRoute(
          path: '/postCreate',
          builder: (BuildContext context, GoRouterState state) {
            return ChangeNotifierProvider(
              create: (context) => PostCreateScreenViewModel(
                PostRepoImpl(),
              ),
              child: const PostCreateScreen(),
            );
          }),
    ],
  );
}
