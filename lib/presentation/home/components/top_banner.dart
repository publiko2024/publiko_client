import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:publiko_app/constants/size_config.dart';

class TopBanner extends StatelessWidget {
  final List<String> imageUrls;
  const TopBanner({super.key, required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/chat');
      },
      child: CarouselSlider(
        options: CarouselOptions(
            viewportFraction: 1.0,
            autoPlay: true,
            autoPlayCurve: Curves.easeInOut,
            autoPlayInterval: const Duration(seconds: 6)),
        items: imageUrls.map((imgUrl) {
          return Builder(builder: (context) {
            return Image.asset(
              imgUrl,
              width: getWidth(335),
              fit: BoxFit.fitWidth,
            );
          });
        }).toList(),
      ),
    );
  }
}
