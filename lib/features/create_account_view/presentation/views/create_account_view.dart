import 'package:flutter/material.dart';
import 'package:restaurant_application/core/widgets/cusrom_divider.dart';
import 'package:restaurant_application/core/widgets/custom_button_app.dart';
import 'package:restaurant_application/core/widgets/custom_text_from_field.dart';
import 'package:restaurant_application/core/widgets/google_button.dart';
import '../../../../core/functions/email_vaildator.dart';
import '../../../../core/functions/password_vaildator.dart';

class CreateAccountView extends StatefulWidget {
  const CreateAccountView({
    super.key,
  });

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  void dispose() {
    nameController;
    emailController;
    passwordController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 18),
          CustomTextFromField(
            controller: nameController,
            textFromName: 'Full Name',
            validator: (p0) {
              return 'You must enter your name !';
            },
          ),
          const SizedBox(height: 8),
          CustomTextFromField(
            controller: emailController,
            textFromName: 'Email address',
            validator: emailValidator,
          ),
          const SizedBox(height: 8),
          CustomTextFromField(
            controller: passwordController,
            textFromName: 'Password',
            validator: passwordVaildator,
          ),
          const SizedBox(height: 36),
          CustomButtonApp(
            width: MediaQuery.of(context).size.width * 0.65,
            text: 'Registration',
            onPressed: () {
              if (formKey.currentState!.validate()) {}
            },
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
