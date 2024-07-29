import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:publiko_app/constants/color_styles.dart';
import 'package:publiko_app/constants/size_config.dart';

class BottomNaviBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int) changeTap;
  final void Function(BuildContext) gotoChatRoom;

  const BottomNaviBar({
    super.key,
    required this.currentIndex,
    required this.changeTap,
    required this.gotoChatRoom,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: ColorStyles.white,
      notchMargin: 0.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildNavItem('assets/icons/home_tab_disabled.svg',
              'assets/icons/home_tab.svg', 0),
          _gotoChatScreenBtn(context),
          _buildNavItem('assets/icons/feed_tab_disabled.svg',
              'assets/icons/feed_tab.svg', 1),
          _buildNavItem('assets/icons/profile_tab_disabled.svg',
              'assets/icons/profile_tab.svg', 2),
        ],
      ),
    );
  }

  Widget _buildNavItem(
      String inactiveIconPath, String activeIconPath, int index) {
    final isSelected = currentIndex == index;

    return MaterialButton(
      onPressed: () => changeTap(index),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: SvgPicture.asset(
        isSelected ? activeIconPath : inactiveIconPath,
        height: getHeight(24),
        width: getWidth(24),
      ),
    );
  }

  Widget _gotoChatScreenBtn(context) {
    return MaterialButton(
      onPressed: () => gotoChatRoom(context),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: SvgPicture.asset(
        'assets/icons/chat_tab_disabled.svg',
        height: getHeight(24),
        width: getWidth(24),
      ),
    );
  }
}
