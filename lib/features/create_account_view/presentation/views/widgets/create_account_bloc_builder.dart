import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_application/core/functions/email_vaildator.dart';
import 'package:restaurant_application/core/functions/password_vaildator.dart';
import 'package:restaurant_application/core/widgets/cusrom_divider.dart';
import 'package:restaurant_application/core/widgets/custom_button_app.dart';
import 'package:restaurant_application/core/widgets/google_button.dart';
import '../../../../../core/widgets/custom_text_from_field.dart';
import '../../manager/create_account_cubit/create_account_cubit.dart';

class CreateAccountBlocBulider extends StatelessWidget {
  const CreateAccountBlocBulider({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateAccountCubit, CreateAccountState>(
      builder: (context, state) {
        return Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                  icon: BlocProvider.of<CreateAccountCubit>(context).suffixIcon,
                  obscureText: BlocProvider.of<CreateAccountCubit>(context)
                      .obscurePassword,
                  onPressedSuffixIcon: () {
                    BlocProvider.of<CreateAccountCubit>(context)
                        .changeShowPassword();
                  },
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
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
