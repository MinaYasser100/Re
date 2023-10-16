import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'login_cubit_state.dart';

class LoginCubitCubit extends Cubit<LoginCubitState> {
  LoginCubitCubit() : super(LoginCubitInitial());

  void loginUserInApp({required String email, required String password}) {
    emit(LoginCubitLoginUserLoading());
    try {
      FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(LoginCubitLoginUserSuccess());
    } catch (e) {
      emit(
        LoginCubitLoginUserfailure(errorMessage: e.toString()),
      );
    }
  }
}
