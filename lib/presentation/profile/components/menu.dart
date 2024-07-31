import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/constants/text_styles.dart';

class Menu extends StatelessWidget {
  final String text;
  final GestureTapCallback onTap;
  const Menu({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getHeight(8)),
      child: ListTile(
        onTap: onTap,
        title: Padding(
          padding: EdgeInsets.only(left: getWidth(15)),
          child: Text(
            text,
            style: TextStyles.menuText,
          ),
        ),
        trailing: const Icon(CupertinoIcons.chevron_forward),
      ),
    );
  }
}
