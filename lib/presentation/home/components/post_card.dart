import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:publiko_app/constants/color_styles.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/constants/text_styles.dart';
import 'package:publiko_app/domain/model/post.dart';

class PostCard extends StatelessWidget {
  final Post post;
  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: getWidth(10)),
      child: GestureDetector(
        onTap: () {
          context.push('/communityDetail', extra: post.id);
        },
        child: Card(
          color: ColorStyles.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          shadowColor: ColorStyles.gray4,
          elevation: 2.0,
          child: SizedBox(
            width: getWidth(220),
            height: getHeight(250),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  (post.imageUrls.isEmpty)
                      ? 'assets/images/post_default_img.png'
                      : post.imageUrls.first,
                  height: getHeight(130),
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: getWidth(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: getHeight(8)),
                      Text(
                        '${post.viewCount}명이 이 글을 봤어요 ',
                        style: TextStyles.secondaryColorText,
                      ),
                      Text(
                        post.title,
                        style: TextStyles.boldText,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: getHeight(8)),
                      Text(
                        post.content,
                        style: TextStyles.postBodyText,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
