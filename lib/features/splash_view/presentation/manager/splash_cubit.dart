import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../create_account_view/presentation/views/create_account_view.dart';
import '../../../login_view/presentation/views/login_view.dart';
import 'splash_state.dart';

class SplashCubit extends Cubit<SplashStates> {
  SplashCubit() : super(SplashInitial());
  bool isWidget = true;

  List<Widget> screens = [
    const CreateAccountView(),
    const LoginView(),
  ];

  int currentIndex = 0;

  List<String> nameText = [
    'Create Account',
    'Login',
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(SplashChangeCurrentIndex());
  }
}
