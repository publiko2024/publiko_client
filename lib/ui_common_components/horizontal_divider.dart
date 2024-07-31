import 'package:flutter/cupertino.dart';
import 'package:publiko_app/constants/color_styles.dart';
import 'package:publiko_app/constants/size_config.dart';

class HorizontalDivider extends StatelessWidget {
  final double? thickness;
  final Color? color;
  const HorizontalDivider({
    super.key,
    this.color,
    this.thickness,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: thickness ?? getHeight(5),
      width: double.infinity,
      color: color ?? ColorStyles.gray4,
    );
  }
}
