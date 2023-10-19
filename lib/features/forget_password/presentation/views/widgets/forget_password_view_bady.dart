import 'package:flutter/material.dart';
import 'package:restaurant_application/core/functions/email_vaildator.dart';
import 'package:restaurant_application/core/utils/styles.dart';
import 'package:restaurant_application/core/widgets/custom_button_app.dart';
import 'package:restaurant_application/core/widgets/custom_text_from_field.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 120,
          ),
          const Text(
            'Lupa Password',
            style: Styles.textStyle20,
          ),
          const SizedBox(height: 4),
          Text(
            'Masukan alamat email anda di bawah ini',
            style: Styles.textStyle16.copyWith(color: const Color(0xff9CA3AF)),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextFromField(
            textFromName: 'Email address',
            controller: textEditingController,
            validator: emailValidator,
          ),
          const Spacer(),
          Align(
            alignment: Alignment.center,
            child: CustomButtonApp(
              width: MediaQuery.of(context).size.width * 0.6,
              text: 'Submit',
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
