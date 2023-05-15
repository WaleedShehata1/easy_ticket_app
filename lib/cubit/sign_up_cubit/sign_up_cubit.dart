import 'package:easy_ticket_app/cubit/sign_up_cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit() : super(SignUpInitialState());

  static SignUpCubit get(context) => BlocProvider.of(context);

  IconData? suffix;

  bool isPassword = true;

  void showPassword() {
    isPassword = !isPassword;

    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(ShowPassword());
  }

  void userCreate({
    required String firstName,
    required String lastName,
    required String phone,
    required String email,
    required String uId,
  }) {

  }

  void userSignUp({
    required String password,
    required String email,
    required String phone,
    required String firstName,
    required String lastName,
  }) async {

  }
}
