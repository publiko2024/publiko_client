import 'package:flutter/material.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/constants/text_styles.dart';
import 'package:publiko_app/domain/model/post.dart';
import 'package:publiko_app/presentation/community_detail/components/comment_list.dart';
import 'package:publiko_app/ui_common_components/horizontal_divider.dart';
import 'package:publiko_app/util/date_convert.dart';

class PostBody extends StatelessWidget {
  final Post post;
  final ScrollController scrollController;
  const PostBody(
      {super.key, required this.post, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        controller: scrollController,
        physics: const ClampingScrollPhysics(), // 스크롤이 맨 밑으로 움직일때 bouncing막기 위함
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPaddingWidth),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        post.nickname,
                        style: TextStyles.nicknameText,
                      ),
                      SizedBox(width: getWidth(5)),
                      Text(
                        dateToElapsedTime(post.createdAt),
                        style: TextStyles.createdAtText,
                      ),
                    ],
                  ),
                  SizedBox(height: getHeight(10)),
                  Text(
                    post.title,
                    style: TextStyles.boldText,
                  ),
                  SizedBox(height: getHeight(10)),
                  Text(
                    post.content,
                    style: TextStyles.postBodyText,
                  ),
                  SizedBox(height: getHeight(10)),
                  if (post.imageUrls.isNotEmpty)
                    ...post.imageUrls.map((url) => Padding(
                          padding: EdgeInsets.only(
                              bottom: getHeight(5)), // 이미지 간격 조정
                          child: Image.asset(
                            url, // 이미지 URL
                            width: double.infinity,
                            fit: BoxFit.fitWidth, // 이미지 크기 조절
                          ),
                        )),
                  SizedBox(height: getHeight(10)),
                  Text(
                    '${post.viewCount}명이 이 게시물을 봤어요',
                    style: TextStyles.createdAtText,
                  ),
                  SizedBox(height: getHeight(15)),
                ],
              ),
            ),
            const HorizontalDivider(),
            SizedBox(height: getHeight(10)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPaddingWidth),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '${post.commentCount}개의 댓글이 있어요',
                        style: TextStyles.createdAtText,
                      )),
                  CommentList(comments: post.comments),
                ],
              ),
            ),
          ],
        ));
  }
}
