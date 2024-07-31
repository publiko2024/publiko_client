import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:publiko_app/constants/color_styles.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/constants/text_styles.dart';
import 'package:publiko_app/domain/model/comment.dart';
import 'package:publiko_app/util/date_convert.dart';

class CommentListTile extends StatelessWidget {
  final Comment comment;
  const CommentListTile({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getHeight(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                comment.nickname,
                style: TextStyles.nicknameText,
              ),
              SizedBox(width: getWidth(5)),
              Text(
                dateToElapsedTime(comment.createdAt),
                style: TextStyles.createdAtText,
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  //삭제, 신고
                },
                child: Padding(
                  padding: EdgeInsets.all(getWidth(8)),
                  child: SvgPicture.asset(
                    'assets/icons/siren.svg',
                    width: getWidth(15),
                  ),
                ),
              ),
            ],
          ),
          _contentBox(),
        ],
      ),
    );
  }

  Widget _contentBox() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          color: ColorStyles.background,
          borderRadius: BorderRadius.all(Radius.circular(3))),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getWidth(8), vertical: getHeight(10)),
        child: Text(
          comment.content,
          style: TextStyles.postBodyText,
        ),
      ),
    );
  }
}
