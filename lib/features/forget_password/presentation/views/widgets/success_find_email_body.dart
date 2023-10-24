import 'package:flutter/material.dart';
import 'package:restaurant_application/core/utils/constant.dart';
import 'package:restaurant_application/core/utils/styles.dart';
import 'package:restaurant_application/core/widgets/custom_button_app.dart';

class SuccessFindEmailBody extends StatelessWidget {
  const SuccessFindEmailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 250,
          ),
          const Icon(
            Icons.check_circle_rounded,
            size: 150,
            color: kPrimaryColor,
          ),
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text(
              'Success',
              style: Styles.textStyle24,
            ),
          ),
          Text(
            'Please check your email for create a new password',
            style: Styles.textStyle16.copyWith(color: kLightGreyColor),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          CustomButtonApp(
            width: MediaQuery.of(context).size.width * 0.6,
            text: 'Back Email',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
