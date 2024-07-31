import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:publiko_app/constants/color_styles.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/constants/text_styles.dart';
import 'package:publiko_app/domain/model/post.dart';
import 'package:publiko_app/util/date_convert.dart';

class PostListTile extends StatelessWidget {
  final Post post;
  const PostListTile({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/communityDetail', extra: post.id);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: getHeight(5), horizontal: defaultPaddingWidth),
        child: Card(
          color: ColorStyles.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          shadowColor: ColorStyles.gray4,
          elevation: 2.0,
          child: Padding(
            padding:  EdgeInsets.all(getWidth(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Text(
                  post.title,
                  style: TextStyles.boldText,
                  overflow: TextOverflow.ellipsis,
                ),
                 SizedBox(height: getHeight(8)),
                 Text(
                  post.content,
                  style: TextStyles.postBodyText,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                 SizedBox(height: getHeight(8)),
                Text(
                  dateToElapsedTime(post.createdAt),
                  style: TextStyles.createdAtText,
                ),
                
                Text('조회 ${post.viewCount}  댓글 ${post.commentCount}',
                  style: TextStyles.secondaryColorText,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
