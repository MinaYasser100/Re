part of 'create_account_cubit.dart';

@immutable
sealed class CreateAccountState {}

final class CreateAccountInitial extends CreateAccountState {}

final class CreateAccounCubitChangeObscurePassword extends CreateAccountState {}
