import 'package:flutter/material.dart';
import 'widgets/forget_password_view_bady.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const ForgetPasswordViewBody(),
    );
  }
}
