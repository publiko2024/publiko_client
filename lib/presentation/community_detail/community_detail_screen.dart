import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:publiko_app/constants/color_styles.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/presentation/community_detail/community_detail_screen_view_model.dart';
import 'package:publiko_app/presentation/community_detail/components/post_body.dart';
import 'package:publiko_app/ui_common_components/sendable_text_input_box.dart';

class CommunityDetailScreen extends StatefulWidget {
  final int postId;
  const CommunityDetailScreen({super.key, required this.postId});

  @override
  State<CommunityDetailScreen> createState() => _CommunityDetailScreenState();
}

class _CommunityDetailScreenState extends State<CommunityDetailScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final viewModel = context.read<CommunityDetailScreenViewModel>();
      viewModel.fetchPost(postId: widget.postId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CommunityDetailScreenViewModel>();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: ColorStyles.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            padding: EdgeInsets.only(left: defaultPaddingWidth),
            onPressed: () {
              context.pop();
            },
            icon: const Icon(CupertinoIcons.back),
          ),
          actions: [
            IconButton(
              padding: EdgeInsets.only(right: defaultPaddingWidth),
              onPressed: () {},
              icon: const Icon(CupertinoIcons.ellipsis_vertical),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: PostBody(post: viewModel.post),
            ),
            SendableTextInputBox(
              focusNode: viewModel.focusNode,
              textController: viewModel.textController,
              send: viewModel.sendComment,
              hintText: '소중한 댓글을 달아주세요.',
            ),
          ],
        ),
      ),
    );
  }
}
