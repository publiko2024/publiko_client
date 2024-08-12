import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:publiko_app/constants/color_styles.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/constants/text_styles.dart';
import 'package:publiko_app/presentation/post_detail/components/post_body.dart';
import 'package:publiko_app/presentation/post_detail/post_detail_screen_view_model.dart';
import 'package:publiko_app/ui_common_components/sendable_text_input_box.dart';

class PostDetailScreen extends StatefulWidget {
  final int postId;
  const PostDetailScreen({super.key, required this.postId});

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final viewModel = context.read<PostDetailScreenViewModel>();
      viewModel.fetchPost(postId: widget.postId);
      viewModel.scrollController.addListener(viewModel.onScroll);
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PostDetailScreenViewModel>();
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
          //scroller controller가 최상단이 아니라면 title을 보여주고 아니면 안보여줌
          title: (viewModel.isTitleVisibleInAppBar)
              ? Text(
                  viewModel.post.title,
                  style: TextStyles.boldText,
                  overflow: TextOverflow.ellipsis,
                )
              : null,
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
              child: PostBody(
                post: viewModel.post,
                scrollController: viewModel.scrollController,
                describePicture: viewModel.describePicture,
              ),
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
