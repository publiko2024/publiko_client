import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:publiko_app/constants/color_styles.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/constants/text_styles.dart';
import 'package:publiko_app/domain/model/post.dart';
import 'package:publiko_app/util/date_convert.dart';

class PostListTileWithImage extends StatelessWidget {
  final Post post;
  const PostListTileWithImage({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/postDetail', extra: post.id);
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
            padding: EdgeInsets.all(getWidth(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: getWidth(205),
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
                      Text(
                        '조회 ${post.viewCount}  댓글 ${post.commentCount}',
                        style: TextStyles.secondaryColorText,
                      )
                    ],
                  ),
                ),
                const Spacer(),
                //이미지
                ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset(
                      post.imageUrls.first,
                      fit: BoxFit.cover,
                      width: getWidth(83),
                      height: getHeight(83),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
