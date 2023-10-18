import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_application/core/utils/assets.dart';
import 'package:restaurant_application/features/create_account_view/data/model/user_model.dart';
part 'create_account_state.dart';

class CreateAccountCubit extends Cubit<CreateAccountState> {
  CreateAccountCubit() : super(CreateAccountInitial());

  IconData suffixIcon = Icons.visibility_off_outlined;
  bool obscurePassword = true;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

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
    required String phone,
  }) async {
    emit(CreateAccounCubitRegisterUserloading());
    try {
      UserCredential user =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print(user.user!.uid);
      putUserInformationsInFirebase(
        name: name,
        email: email,
        phone: phone,
        userID: user.user!.uid,
        image: Assets.defualtUserImage,
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
  }) {
    emit(CreateAccounCubitPutUserInformationloading());
    try {
      UserModel userModel = UserModel(
          userID: userID, name: name, email: email, phone: phone, image: image);
      firestore.collection('users').doc(userID).set(userModel.toJson());
      emit(CreateAccounCubitPutUserInformationSuccess());
    } catch (e) {
      print(e.toString());
      emit(
        CreateAccounCubitPutUserInformationFailure(errorMessage: e.toString()),
      );
    }
  }
}
