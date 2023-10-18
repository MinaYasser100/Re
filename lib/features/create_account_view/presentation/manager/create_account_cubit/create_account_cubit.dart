import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'create_account_state.dart';

class CreateAccountCubit extends Cubit<CreateAccountState> {
  CreateAccountCubit() : super(CreateAccountInitial());

  IconData suffixIcon = Icons.visibility_off_outlined;
  bool obscurePassword = true;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  void changeShowPassword() {
    obscurePassword = !obscurePassword;
    suffixIcon = obscurePassword == true
        ? Icons.visibility_off_outlined
        : Icons.visibility_outlined;
    emit(CreateAccounCubitChangeObscurePassword());
  }

  Future<void> createAccountForUser({
    required String email,
    required String password,
    required String name,
  }) async {
    emit(CreateAccounCubitRegisterUserloading());
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(CreateAccounCubitRegisterUserSuccess());
    } catch (e) {
      emit(
        CreateAccounCubitRegisterUserFailure(errorMessage: e.toString()),
      );
    }
  }

  void changeAutovalidateMode() {
    autovalidateMode = AutovalidateMode.always;
    emit(CreateAccounCubitChangeAutovalidateMode());
  }

  void putUserInformationsInFirebase({
    required String name,
    required String email,
    required String phone,
    required String userID,
    required String image,
  }) {}
}
