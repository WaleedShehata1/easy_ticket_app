import 'package:easy_ticket_app/cubit/sign_up_cubit/sign_up_state.dart';
import 'package:easy_ticket_app/network/remote/end_points.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/user_register_model.dart';
import '../../network/local/dio_helper.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit() : super(SignUpInitialState());
  RegisterModel? logUpModel;
  static SignUpCubit get(context) => BlocProvider.of(context);

  IconData? suffix = Icons.visibility_outlined;

  bool isPassword = true;

  void showPassword() {
    isPassword = !isPassword;

    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(RegisterShowPassword());
  }

  IconData? suffixConfirm = Icons.visibility_outlined;

  bool isConfirmPassword = true;

  void showConfirmPassword1() {
    isConfirmPassword = !isConfirmPassword;

    suffixConfirm = isConfirmPassword
        ? Icons.visibility_outlined
        : Icons.visibility_off_outlined;
    emit(RegisterShowPassword());
  }

  userRegister({
    required String national_ID,
    required String password,
    required String email,
    required String first_Name,
    required String last_Name,
    required String phone,
    required String health_status,
    required String date_of_birth,
    required String gender,
    required String profession,
  }) {
    emit(SignUpLoadingState());
    DioHelper.postData(
      url: register,
      data: {
        'national_ID': national_ID,
        'password': password,
        'email': email,
        'first_Name': first_Name,
        'last_Name': last_Name,
        'phone': phone,
        'health_status': health_status,
        'date_of_birth': date_of_birth,
        'gender': gender,
        'profession': profession,
      },
    ).then((value) {
      print('Value == ${value.data}');
      logUpModel = RegisterModel.fromJson(value.data);
      print(logUpModel!.message);
      emit(SignUpSuccessState(logUpModel));
    }).catchError((error) {
      print("error= ${error.toString()}");
      emit(SignUpErrorState(error.toString()));
    });
  }
}
