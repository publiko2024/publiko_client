import 'package:flutter/material.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/constants/text_styles.dart';
import 'package:publiko_app/domain/model/post.dart';
import 'package:publiko_app/ui_common_components/horizontal_divider.dart';
import 'package:publiko_app/util/date_convert.dart';

class PostBody extends StatelessWidget {
  final Post post;
  const PostBody({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const ClampingScrollPhysics(), // 스크롤이 맨 밑으로 움직일때 bouncing막기 위함
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPaddingWidth),
              child: Column(
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
                ],
              ),
            ),
            const HorizontalDivider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPaddingWidth),
            ),
            Text('aa개의 댓글이 있어요'),
            //comment list
          ],
        ));
  }
}
