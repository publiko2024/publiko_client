import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:publiko_app/constants/color_styles.dart';
import 'package:publiko_app/constants/text_styles.dart';
import 'package:publiko_app/presentation/post_create/components/input_area.dart';
import 'package:publiko_app/presentation/post_create/components/select_photo_bottom_box.dart';
import 'package:publiko_app/presentation/post_create/post_create_screen_view_model.dart';

class PostCreateScreen extends StatelessWidget {
  const PostCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PostCreateScreenViewModel>();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: ColorStyles.white,
        appBar: AppBar(
          title: Text(
            '글쓰기',
            style: TextStyles.appBarText,
          ),
          centerTitle: true,
          actions: [
            (viewModel.title.isEmpty || viewModel.content.isEmpty)
                ? TextButton(
                    onPressed: null,
                    style: TextButton.styleFrom(
                      foregroundColor: ColorStyles.gray1,
                    ),
                    child: const Text('등록'),
                  )
                : TextButton(
                    onPressed: () {
                      viewModel.createPost(context);
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: ColorStyles.primary,
                    ),
                    child: const Text('등록'),
                  )
          ],
        ),
        body: Column(
          children: [
            Expanded(child: InputArea()),
            SafeArea(
              child: SelectPhotoBottomBox(
                pickedImages: viewModel.pickedImages,
                getImageFromGallery: viewModel.getImageFromGallery,
                getImageFromPhoto: viewModel.getImageFromCamera,
                removeImage: viewModel.removeImage,
              ),
            )
          ],
        ),
      ),
    );
  }
}
