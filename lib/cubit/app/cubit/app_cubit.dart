// ignore_for_file: avoid_print, non_constant_identifier_names, depend_on_referenced_packages

import 'package:easy_ticket_app/model/model.dart';
import 'package:easy_ticket_app/network/local/dio_helper.dart';
import 'package:easy_ticket_app/network/remote/end_points.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../model/sign_in_model.dart';
import '../../../widget/constants.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  // emailverification
  static AppCubit get(context) => BlocProvider.of(context);
  getData? getRespons;
  getEmailVerification({required String? otp}) {
    emit(AppInitial());
    print('email= $userEmail');
    print('otp= $otp');

    DioHelper.postData(
        url: emailverification,
        data: {'email': userEmail, 'otp': otp}).then((value) {
      emit(LoadingState());
      getRespons = getData.fromJson(value.data);
/*       print("value=${value.data}");
      print('getResponse=${getRespons}');
      print('data= ${value.data}'); */
      emit(AppSuccessState(getRespons));
    }).catchError((error) {
      print("error= ${error.toString()}");
      emit(AppErrorState(error));
    });
  }

  //   show  user-data

  SignInModel? userModel;
  void getUserData() {
    emit(AppInitial());
    DioHelper.getData(url: show, token: token!).then((value) {
      emit(LoadingState());
      userModel = SignInModel.fromJson(value.data);
      print(
          "user name = ${userModel!.data!.first_Name}${userModel!.data!.last_Name}");
      emit(ShowSuccessState(userModel));
    }).catchError((error) {
      print("error= ${error.toString()}");
      emit(ShowErrorState(error));
    });
  }

  //   Update Profile
  void updateUserData({
    required String profession,
    required String health_status,
    required String email,
    required String phone,
  }) {
    emit(LoadingState());

    DioHelper.putData(url: update, token: token, data: {
      'profession': profession,
      'phone': phone,
      'email': email,
      'health_status': health_status,
    }).then((value) {
      userModel = SignInModel.fromJson(value.data);
      print(userModel!.data!.email);
      emit(UpdateSuccessState(userModel));
    }).catchError((error) {
      print("error=/${error.toString()}");
      emit(UpdateErrorState(error.toString()));
    });
  }

  /// send otp & email for reset password

  getData? getResponsReset;
  sendOtpResetPassord({required String? otpReset, required String? Email}) {
    emit(AppInitial());
    print('email= $Email');
    print('otp= $otpReset');
    DioHelper.postData(
        url: send_otp_forgotPassword,
        data: {'email': Email, 'otp': otpReset}).then((value) {
      emit(LoadingState());
      print(value.data);
      getResponsReset = getData.fromJson(value.data);
      emit(sendOtpResetSuccessState(getResponsReset));
    }).catchError((error) {
      print("error= ${error.toString()}");
      emit(sendOtpResetErrorState(error));
    });
  }
}
