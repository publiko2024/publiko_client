import 'package:flutter/material.dart';
import 'package:publiko_app/constants/color_styles.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/presentation/post_main/post_main_screen_view_model.dart';

class InnerTabs extends SliverPersistentHeaderDelegate {
  final PostTabType tabType;
  final void Function(PostTabType type) changeTapType;
  const InnerTabs({required this.tabType, required this.changeTapType});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: const BoxDecoration(color: ColorStyles.background),
      height: getHeight(60), //maxExtend, minExtend와 동일하게 해둠
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultPaddingWidth),
        child: Row(
          children: [
            TextButton(
              onPressed: () => changeTapType(PostTabType.recent),
              style: TextButton.styleFrom(
                  foregroundColor: (tabType == PostTabType.recent)
                      ? ColorStyles.white
                      : ColorStyles.gray2,
                  backgroundColor: (tabType == PostTabType.recent)
                      ? ColorStyles.primary
                      : ColorStyles.white,
                  minimumSize: Size(getWidth(60), getHeight(36)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0), // 테두리 둥글기 설정
                  ),
                  side: (tabType == PostTabType.recent) //테두리 색
                      ? const BorderSide(color: ColorStyles.primary)
                      : const BorderSide(color: Color(0xffbfbfbf))),
              child: Text(
                '최신',
                style: TextStyle(
                    fontSize: getHeight(16),
                    fontWeight: (tabType == PostTabType.recent)
                        ? FontWeight.w600
                        : FontWeight.w400),
              ),
            ),
            SizedBox(width: getWidth(10)),
            TextButton(
              onPressed: () => changeTapType(PostTabType.popular),
              style: TextButton.styleFrom(
                  foregroundColor: (tabType == PostTabType.popular)
                      ? ColorStyles.white
                      : ColorStyles.gray2,
                  backgroundColor: (tabType == PostTabType.popular)
                      ? ColorStyles.primary
                      : ColorStyles.white,
                  minimumSize: Size(getWidth(60), getHeight(36)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0), // 테두리 둥글기 설정
                  ),
                  side: (tabType == PostTabType.popular) //테두리 색
                      ? const BorderSide(color: ColorStyles.primary)
                      : const BorderSide(color: Color(0xffbfbfbf))),
              child: Text(
                '인기',
                style: TextStyle(
                    fontSize: getHeight(16),
                    fontWeight: (tabType == PostTabType.popular)
                        ? FontWeight.w600
                        : FontWeight.w400),
              ),
            ),

            const Spacer(),
            //전체보기 필터
            // TextButton.icon(
            //     icon: Icon(
            //       CupertinoIcons.checkmark_alt,
            //       size: getProportionateScreenWidth(15),
            //     ),
            //     label: Text('우리학교 글만 보기'),
            //     onPressed: () {
            //       vm.setCollegeFilter();
            //     },
            //     style: TextButton.styleFrom(
            //       primary: vm.collegeFilter ? kMainColor : kPostBtnColor,
            //       padding: EdgeInsets.zero,
            //       tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            //     )),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => getHeight(60);

  @override
  double get minExtent => getHeight(60);

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
