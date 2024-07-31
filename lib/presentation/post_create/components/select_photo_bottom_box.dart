import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:publiko_app/constants/color_styles.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/constants/text_styles.dart';

class SelectPhotoBottomBox extends StatelessWidget {
  final List<XFile> pickedImages;
  final void Function() getImageFromGallery;
  final void Function() getImageFromPhoto;
  final void Function(int) removeImage;

  const SelectPhotoBottomBox({
    super.key,
    required this.pickedImages,
    required this.getImageFromGallery,
    required this.getImageFromPhoto,
    required this.removeImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //하단의 아이콘 버튼의 패딩값 때문에 여기서는 양 옆을 다르게 패딩값을 줘야한다.(+vertical패딩값도 필요없음)
      //그래서 BottomFixedBtnDecoBox안쓰고 여기서 바로 custom해서 씀
      padding: EdgeInsets.symmetric(
        horizontal: getWidth(10),
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x0F000000),
            blurRadius: 12,
            offset: Offset(0, -4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          pickedImages.isEmpty ? const SizedBox() : _showLoadImage(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton.icon(
                  onPressed: getImageFromGallery,
                  icon: Icon(
                    CupertinoIcons.photo,
                    color: ColorStyles.gray2,
                    size: getWidth(20),
                  ),
                  label: Text(
                    '${pickedImages.length}/6',
                    textAlign: TextAlign.center,
                    style: TextStyles.createdAtText,
                  )),
              IconButton(
                icon: Icon(
                  CupertinoIcons.camera,
                  color: ColorStyles.gray2,
                  size: getWidth(20),
                ),
                onPressed: getImageFromPhoto,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _showLoadImage() {
    return SizedBox(
      height: getHeight(100),
      child: ListView.builder(
          itemCount: pickedImages.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              Stack(alignment: AlignmentDirectional.center, children: [
                Container(
                  height: getHeight(92),
                  width: getWidth(92),
                  padding: EdgeInsets.all(getHeight(5)),
                  child: Image.file(
                    File(pickedImages[index].path),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    right: getWidth(0),
                    top: getHeight(0),
                    child: IconButton(
                      padding: EdgeInsets.zero, // 패딩 설정
                      constraints: const BoxConstraints(),
                      icon: Icon(
                        CupertinoIcons.xmark_circle,
                        color: Colors.white,
                        size: getWidth(20),
                      ),
                      onPressed: () => removeImage(index),
                    )),
                Positioned(
                    right: getWidth(0),
                    top: getHeight(0),
                    child: IconButton(
                      padding: EdgeInsets.zero, // 패딩 설정
                      constraints: const BoxConstraints(),
                      icon: Icon(
                        CupertinoIcons.xmark_circle_fill,
                        color: Colors.black,
                        size: getWidth(20),
                      ),
                      onPressed: () => removeImage(index),
                    ))
              ])),
    );
  }
}
