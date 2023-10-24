part of 'forget_password_cubit.dart';

@immutable
sealed class ForgetPasswordState {}

final class ForgetPasswordInitial extends ForgetPasswordState {}

final class ForgetPasswordCheckUserEmailLoading extends ForgetPasswordState {}

final class ForgetPasswordCheckUserEmailSuccess extends ForgetPasswordState {}

final class ForgetPasswordCheckUserEmailFailure extends ForgetPasswordState {
  final String errorMessage;

  ForgetPasswordCheckUserEmailFailure({required this.errorMessage});
}
