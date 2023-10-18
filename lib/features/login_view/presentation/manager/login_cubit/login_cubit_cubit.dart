import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'login_cubit_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginCubitInitial());
  IconData suffixIcon = Icons.visibility_off_outlined;
  bool obscurePassword = true;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  Future<void> loginUserInApp(
      {required String email, required String password}) async {
    emit(LoginCubitLoginUserLoading());
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(LoginCubitLoginUserSuccess());
    } catch (e) {
      emit(
        LoginCubitLoginUserfailure(errorMessage: e.toString()),
      );
    }
  }

  void changeShowPassword() {
    obscurePassword = !obscurePassword;
    suffixIcon = obscurePassword == true
        ? Icons.visibility_off_outlined
        : Icons.visibility_outlined;
    emit(LoginCubitChangeObscurePassword());
  }
}
