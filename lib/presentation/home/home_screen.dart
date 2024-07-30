import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/constants/text_styles.dart';
import 'package:publiko_app/presentation/home/components/popular_post_list.dart';
import 'package:publiko_app/presentation/home/components/top_banner.dart';
import 'package:publiko_app/presentation/home/home_screen_view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeScreenViewModel>();

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: defaultPaddingWidth,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: getHeight(30)),
          Image.asset('assets/images/slogan.png'),
          SizedBox(height: getHeight(20)),
          TopBanner(imageUrls: viewModel.bannerImageUrlList),
          SizedBox(height: getHeight(30)),
          Text(
            '모두가 주목하는 인기 글을 만나보세요!',
            style: TextStyles.boldText,
          ),
          SizedBox(height: getHeight(10)),
          PopularPostList(popularPosts: viewModel.popularPosts),
        ],
      ),
    );
  }
}
