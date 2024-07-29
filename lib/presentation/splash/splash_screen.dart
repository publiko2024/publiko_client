import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:publiko_app/constants/size_config.dart';
import 'package:publiko_app/ui_common_components/default_btn.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/splash_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
            left: getWidth(30),
            top: getHeight(690),
            child: DefaultBtn(
              text: '시작하기',
              onPressed: () {
                context.go('/');
              },
              width: getWidth(315),
            )),
      ],
    );
  }
}
