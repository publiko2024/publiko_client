import 'package:flutter/material.dart';
import 'package:publiko_app/config/routers.dart';
import 'package:publiko_app/constants/color_styles.dart';
import 'package:publiko_app/constants/size_config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp.router(
      title: 'Publiko',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: ColorStyles.primary,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: Routes.router,
    );
  }
}
