import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_application/core/utils/styles.dart';
import 'package:restaurant_application/core/widgets/custom_text_from_field.dart';
import 'package:restaurant_application/features/forget_password/presentation/manager/forget_password_cubit/forget_password_cubit.dart';
import '../../../../../core/functions/email_vaildator.dart';
import '../../../../../core/widgets/custom_button_app.dart';

class ForgetPasswordBlocConsumer extends StatefulWidget {
  const ForgetPasswordBlocConsumer({
    super.key,
  });

  @override
  State<ForgetPasswordBlocConsumer> createState() =>
      _ForgetPasswordBlocConsumerState();
}

class _ForgetPasswordBlocConsumerState
    extends State<ForgetPasswordBlocConsumer> {
  TextEditingController textEditingController = TextEditingController();
  @override
  void dispose() {
    textEditingController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {},
      builder: (context, state) {
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
                style:
                    Styles.textStyle16.copyWith(color: const Color(0xff9CA3AF)),
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
                  onPressed: () async {
                    BlocProvider.of<ForgetPasswordCubit>(context)
                        .changePassword(
                            email: textEditingController.text.trim());
                  },
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        );
      },
    );
  }
}
