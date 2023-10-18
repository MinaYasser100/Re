part of 'create_account_cubit.dart';

@immutable
sealed class CreateAccountState {}

final class CreateAccountInitial extends CreateAccountState {}

final class CreateAccounCubitChangeObscurePassword extends CreateAccountState {}

final class CreateAccounCubitRegisterUserloading extends CreateAccountState {}

final class CreateAccounCubitRegisterUserSuccess extends CreateAccountState {}

final class CreateAccounCubitRegisterUserFailure extends CreateAccountState {
  final String errorMessage;

  CreateAccounCubitRegisterUserFailure({required this.errorMessage});
}
