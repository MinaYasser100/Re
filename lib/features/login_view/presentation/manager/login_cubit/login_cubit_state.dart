part of 'login_cubit_cubit.dart';

@immutable
sealed class LoginCubitState {}

final class LoginCubitInitial extends LoginCubitState {}

final class LoginCubitLoginUserLoading extends LoginCubitState {}

final class LoginCubitLoginUserSuccess extends LoginCubitState {}

final class LoginCubitLoginUserfailure extends LoginCubitState {
  final String errorMessage;

  LoginCubitLoginUserfailure({required this.errorMessage});
}
