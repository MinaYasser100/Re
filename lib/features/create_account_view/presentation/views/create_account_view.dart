import 'package:flutter/material.dart';
import 'package:restaurant_application/core/widgets/cusrom_divider.dart';
import 'package:restaurant_application/core/widgets/custom_button_app.dart';
import 'package:restaurant_application/core/widgets/custom_text_from_field.dart';
import 'package:restaurant_application/core/widgets/google_button.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 18),
          const CustomTextFromField(
            textFromName: 'Full Name',
          ),
          const SizedBox(height: 8),
          const CustomTextFromField(
            textFromName: 'Email address',
          ),
          const SizedBox(height: 8),
          const CustomTextFromField(
            textFromName: 'Password',
          ),
          const SizedBox(height: 36),
          CustomButtonApp(
            width: MediaQuery.of(context).size.width * 0.65,
            text: 'Registration',
            onPressed: () {},
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
