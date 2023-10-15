import 'package:flutter/material.dart';
import 'package:restaurant_application/core/utils/constant.dart';
import 'package:restaurant_application/core/widgets/cusrom_divider.dart';
import 'package:restaurant_application/core/widgets/custom_button_app.dart';
import 'package:restaurant_application/core/widgets/custom_text_from_field.dart';
import 'package:restaurant_application/core/widgets/google_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 25),
          const CustomTextFromField(
            textFromName: 'Email address',
          ),
          const SizedBox(height: 8),
          const CustomTextFromField(
            textFromName: 'Password',
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Forget Password?',
                style: TextStyle(
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 18),
          CustomButtonApp(
            width: MediaQuery.of(context).size.width * 0.65,
            text: 'Login',
          ),
          const SizedBox(height: 12),
          const CustomDivider(),
          const SizedBox(height: 12),
          const GoogleButton(),
        ],
      ),
    );
  }
}
