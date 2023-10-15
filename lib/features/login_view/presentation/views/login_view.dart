import 'package:flutter/material.dart';
import 'package:restaurant_application/core/functions/email_vaildator.dart';
import 'package:restaurant_application/core/utils/constant.dart';
import 'package:restaurant_application/core/widgets/cusrom_divider.dart';
import 'package:restaurant_application/core/widgets/custom_button_app.dart';
import 'package:restaurant_application/core/widgets/custom_text_from_field.dart';
import 'package:restaurant_application/core/widgets/google_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  void dispose() {
    emailController;
    passwordController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(height: 25),
          CustomTextFromField(
            controller: emailController,
            textFromName: 'Email address',
            validator: emailValidator,
          ),
          const SizedBox(height: 8),
          CustomTextFromField(
            controller: passwordController,
            textFromName: 'Password',
            validator: (p0) {
              if (p0!.isEmpty) {
                return 'Please, enter your password !';
              }
              return null;
            },
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
