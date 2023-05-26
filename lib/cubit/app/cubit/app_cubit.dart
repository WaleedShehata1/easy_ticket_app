import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:easy_ticket_app/cubit/sign_up/sign_up_cubit.dart';
import 'package:easy_ticket_app/model/model.dart';
import 'package:easy_ticket_app/network/local/dio_helper.dart';
import 'package:easy_ticket_app/network/remote/end_points.dart';
import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../model/sign_in_model.dart';
import '../../../widget/constants.dart';
import '../../sign_in/sign_in_cubit.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  // emailverification
  static AppCubit get(context) => BlocProvider.of(context);
  getData? getRespons;
  getEmailVerification({required String? otp}) {
    emit(AppInitial());
    ;
    print('email= $userEmail');
    print('otp= $otp');

    DioHelper.postData(
        url: emailverification,
        data: {'email': userEmail, 'otp': otp}).then((value) {
      emit(AppLoadingState());
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
      emit(UpdateLoadingState());
      userModel = SignInModel.fromJson(value.data);
      print(
          "user name = ${userModel!.data!.first_Name}${userModel!.data!.last_Name}");
      emit(UpdateSuccessState(userModel));
    }).catchError((error) {
      print("error= ${error.toString()}");
      emit(UpdateErrorState(error));
    });
  }

  //   Update Profile
  void updateUserData({
    required String profession,
    required String health_status,
    required String email,
    required String phone,
  }) {
    emit(UpdateLoadingState());

    DioHelper.putData(url: update, token: token, data: {
      'profession': profession,
      'phone': phone,
      'email': email,
      'health_status': health_status,
    }).then((value) {
      userModel = SignInModel.fromJson(value.data);
      print(userModel!.data!.first_Name);
      emit(UpdateSuccessState(userModel));
    }).catchError((error) {
      print("error=${error.toString()}");
      emit(UpdateErrorState(error.toString()));
    });
  }
}
