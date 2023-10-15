import 'package:flutter/material.dart';
import 'package:restaurant_application/core/utils/assets.dart';
import 'package:restaurant_application/core/utils/constant.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.65,
      height: 52.0,
      decoration: BoxDecoration(
        color: kGoogleLogoColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextButton(
        onPressed: () {},
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(Assets.googleLogo),
            ),
            SizedBox(width: 15),
            Text(
              'Sign up with Google',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
