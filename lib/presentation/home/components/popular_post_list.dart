import 'package:flutter/material.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/domain/model/post.dart';
import 'package:publiko_app/presentation/home/components/post_card.dart';

class PopularPostList extends StatelessWidget {
  final List<Post> popularPosts;
  const PopularPostList({super.key, required this.popularPosts});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(270), // 카드의 높이에 맞게 조정
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: popularPosts.length,
        itemBuilder: (context, index) {
          return PostCard(post: popularPosts[index]);
        },
      ),
    );
  }
}
