// ignore_for_file: depend_on_referenced_packages, avoid_print, non_constant_identifier_names

import 'package:easy_ticket_app/network/local/dio_helper.dart';
import 'package:easy_ticket_app/network/remote/end_points.dart';
import 'package:easy_ticket_app/widget/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../model/sign_in_model.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());
  SignInModel? userModel;
  static ProfileCubit get(context) => BlocProvider.of(context);
  void getUserData() {
    emit(ProfileInitial());
    DioHelper.getData(url: show, token: token!).then((value) {
      emit(ProfileLoadingState());
      userModel = SignInModel.fromJson(value.data);
      print(
          "user name = ${userModel!.data!.first_Name}${userModel!.data!.last_Name}");
      emit(ProfileSuccessState(userModel));
    }).catchError((error) {
      print("error= ${error.toString()}");
      emit(ProfileErrorState(error));
    });
  }

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
      emit(ProfileSuccessState(userModel));
    }).catchError((error) {
      print("error=${error.toString()}");
      emit(ProfileErrorState(error.toString()));
    });
  }
}
