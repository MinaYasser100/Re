import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../manager/create_account_cubit/create_account_cubit.dart';
import 'widgets/create_account_bloc_builder.dart';

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
  TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  void dispose() {
    nameController;
    emailController;
    passwordController;
    phoneController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateAccountCubit(),
      child: CreateAccountBlocBulider(
        formKey: formKey,
        nameController: nameController,
        emailController: emailController,
        passwordController: passwordController,
        phoneController: phoneController,
      ),
    );
  }
}
