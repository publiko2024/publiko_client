import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:publiko_app/constants/color_styles.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/constants/text_styles.dart';
import 'package:publiko_app/presentation/community_main/community_main_screen_view_model.dart';
import 'package:publiko_app/presentation/community_main/components/inner_tabs.dart';
import 'package:publiko_app/presentation/community_main/components/post_list_tile.dart';
import 'package:publiko_app/presentation/community_main/components/post_list_tile_with_image.dart';

class CommunityMainScreen extends StatelessWidget {
  const CommunityMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CommunityMainScreenViewModel>();
    return Stack(
      children: [
        CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverAppBar(
              centerTitle: true,
              title: Text(
                '커뮤니티',
                style: TextStyles.appBarText,
              ),
              actions: [
                IconButton(
                  padding: EdgeInsets.only(right: defaultPaddingWidth),
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.search),
                  color: ColorStyles.black,
                ),
              ],
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              pinned: false,
              floating: true,
            ),
            SliverPersistentHeader(
              delegate: InnerTabs(
                  tabType: viewModel.tabType,
                  changeTapType: viewModel.sortPosts),
              pinned: true,
            ),
            (viewModel.posts.isNotEmpty)
                ? SliverList(
                    delegate: SliverChildBuilderDelegate(
                        (context, index) =>
                            (viewModel.posts[index].imageUrls.isEmpty)
                                ? PostListTile(post: viewModel.posts[index])
                                : PostListTileWithImage(
                                    post: viewModel.posts[index]),
                        childCount: viewModel.posts.length),
                  )
                : SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => const Center(
                        child: Text('등록된 게시글이 없습니다.'),
                      ),
                      childCount: 1,
                    ),
                  )
          ],
        ),
        Positioned(
          bottom: 16.0,
          right: 16.0,
          child: FloatingActionButton(
            shape: const CircleBorder(),
            backgroundColor: ColorStyles.secondary,
            onPressed: () {
              //post create navigate
            },
            child: SvgPicture.asset(
              'assets/icons/create_post.svg',
              height: getHeight(24),
              width: getWidth(24),
            ),
          ),
        ),
      ],
    );
  }
}
