import 'package:flutter/material.dart';
import 'package:restaurant_application/core/utils/constant.dart';
import 'package:restaurant_application/core/utils/styles.dart';

class TwoButtonsForBottomSheet extends StatelessWidget {
  const TwoButtonsForBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Create Account',
                style: Styles.textStyle16PrimaryColor,
              ),
            ),
            SizedBox(
              height: 2,
              width: 70,
              child: Container(
                color: kPrimaryColor,
              ),
            )
          ],
        ),
        const SizedBox(
          width: 30,
        ),
        SizedBox(
          width: 100,
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Login',
              textAlign: TextAlign.start,
              style: Styles.textStyle16PrimaryColor
                  .copyWith(color: kLightGreyColor),
            ),
          ),
        ),
      ],
    );
  }
}
