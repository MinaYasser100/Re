part of 'login_cubit_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginCubitInitial extends LoginState {}

final class LoginCubitLoginUserLoading extends LoginState {}

final class LoginCubitLoginUserSuccess extends LoginState {
  final String userId;

  LoginCubitLoginUserSuccess({required this.userId});
}

final class LoginCubitLoginUserfailure extends LoginState {
  final String errorMessage;

  LoginCubitLoginUserfailure({required this.errorMessage});
}

final class LoginCubitChangeObscurePassword extends LoginState {}

final class LoginCubitChangeAutovalidateMode extends LoginState {}
