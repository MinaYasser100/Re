import 'package:flutter/material.dart';
import 'package:restaurant_application/core/utils/assets.dart';

class ImageAndTextsSplashView extends StatelessWidget {
  const ImageAndTextsSplashView({
    super.key,
    required this.mediaQuerySize,
  });

  final Size mediaQuerySize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          height: mediaQuerySize.height * 0.3,
          image: const AssetImage(Assets.splashImage),
        ),
        const SizedBox(
          height: 55,
        ),
        const Text(
          'welcome',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Opacity(
          opacity: 0.6,
          child: Text(
            'Before enjoying Foodmedia services Please register first',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
