import 'package:flutter/material.dart';
import 'package:publiko_app/domain/model/comment.dart';
import 'package:publiko_app/presentation/community_detail/components/comment_list_tile.dart';

class CommentList extends StatelessWidget {
  final List<Comment> comments;
  const CommentList({super.key, required this.comments});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: comments.length,
      itemBuilder: (BuildContext context, int index) =>
          CommentListTile(comment: comments[index]),
    );
  }
}
