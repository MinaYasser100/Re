import 'package:flutter/material.dart';
import 'package:restaurant_application/core/utils/constant.dart';
import 'package:restaurant_application/core/utils/styles.dart';

class TwoButtonsForLoginBottomSheet extends StatelessWidget {
  const TwoButtonsForLoginBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            'Create Account',
            style: Styles.textStyle16.copyWith(color: kLightGreyColor),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Column(
          children: [
            SizedBox(
              width: 100,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Login',
                  textAlign: TextAlign.start,
                  style: Styles.textStyle16,
                ),
              ),
            ),
            SizedBox(
              height: 2,
              width: 35,
              child: Container(
                color: kPrimaryColor,
              ),
            )
          ],
        ),
      ],
    );
  }
}
