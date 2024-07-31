import 'package:flutter/material.dart';
import 'package:publiko_app/constants/size_config.dart';

class InputArea extends StatelessWidget {
  const InputArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getWidth(20), vertical: getHeight(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TextInputSpace(vm: vm),
            // SelectCategory(vm: vm),
          ],
        ),
      ),
    );
  }
}
