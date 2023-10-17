import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'create_account_state.dart';

class CreateAccountCubit extends Cubit<CreateAccountState> {
  CreateAccountCubit() : super(CreateAccountInitial());

  IconData suffixIcon = Icons.visibility_off_outlined;
  bool obscurePassword = true;

  void changeShowPassword() {
    obscurePassword = !obscurePassword;
    suffixIcon = obscurePassword == true
        ? Icons.visibility_off_outlined
        : Icons.visibility_outlined;
    emit(CreateAccounCubitChangeObscurePassword());
  }
}
