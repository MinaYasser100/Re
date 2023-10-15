import 'package:flutter/material.dart';
import 'button_section_splash_view.dart';
import 'image_and_texts_splash_view.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: mediaQuerySize.height * .17,
          ),
          ImageAndTextsSplashView(mediaQuerySize: mediaQuerySize),
          SizedBox(
            height: mediaQuerySize.height * 0.12,
          ),
          ButtonsSectionSplashView(mediaQuerySize: mediaQuerySize),
        ],
      ),
    );
  }
}
