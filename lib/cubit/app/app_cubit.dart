// ignore_for_file: avoid_print, non_constant_identifier_names, depend_on_referenced_packages, unnecessary_brace_in_string_interps

import 'package:easy_ticket_app/network/local/dio_helper.dart';
import 'package:easy_ticket_app/network/remote/end_points.dart';
import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/metro.dart';
import '../../model/user_register_model.dart';
import '../../model/wallet_charge_model.dart';
import '../../widget/constants.dart';
import 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  // emailverification
  static AppCubit get(context) => BlocProvider.of(context);
  RegisterModel? getRespons;
  getEmailVerification({required String? otp}) {
    emit(AppInitial());
    print('email= $userEmail');
    print('otp= $otp');

    DioHelper.postData(
        url: emailverification,
        data: {'email': userEmail, 'otp': otp}).then((value) {
      emit(AppLoadingState());
      getRespons = RegisterModel.fromJson(value.data);
      emit(AppSuccessState(getRespons));
    }).catchError((error) {
      print("error= ${error.toString()}");
      emit(AppErrorState(error));
    });
  }

  BusTicket? bus;
  void getMetroTicet() {
    emit(AppLoadingState());
    DioHelper.getDataTicket(url: bus_ticket).then((value) {
      bus = BusTicket.fromJson(value.data);
      final Pattern = RegExp(',{1.800}');
      Pattern.allMatches("${value}").forEach(
        (element) => print(element.group(1)),
      );
      emit(AppSuccess(bus));
    }).catchError((error) {
      print('error ticket metro = ${error.toString()}');
      emit(AppError(error));
    });
  }

  //Show user-data

  RegisterModel? userModel;
  void getUserData() {
    emit(AppLoadingState());
    DioHelper.getData(url: show, token: token!).then((value) {
      userModel = RegisterModel.fromJson(value.data);
      CacheHelper.saveData(key: 'wallet', value: userModel!.data!.wallet);
      CacheHelper.saveData(key: 'id', value: userModel!.data!.uid);
      CacheHelper.saveData(
          key: 'national_ID', value: userModel!.data!.national_ID);
      print(userModel!.data!.first_Name);
      print(userModel!.data!.uid);
      print(userModel!.message);
      print(userModel!.status);
      print(userModel!.data!.email);
      emit(ShowSuccessState(userModel));
    }).catchError((error) {
      print("error show user= ${error.toString()}");
      emit(ShowErrorState(error));
    });
  }

  //   Update Profile
  RegisterModel? userModel2;
  void updateUserData({
    required String profession,
    required String health_status,
    required String email,
    required String phone,
  }) {
    emit(AppLoadingState());

    DioHelper.putData(url: update, token: token, data: {
      'profession': profession,
      'phone': phone,
      'email': email,
      'health_status': health_status,
    }).then((value) {
      emit(AppLoadingState());
      print(CacheHelper.getData(key: 'token'));
      print('value${value.data}');
      userModel2 = RegisterModel.fromJson(value.data);
      getUserData();
      emit(UpdateSuccessState(userModel2));
    }).catchError((error) {
      print("error=/${error.toString()}");
      emit(UpdateErrorState(error.toString()));
    });
  }

  /// send otp & email for reset password

  RegisterModel? getResponsReset;
  sendOtpResetPassord({required String otpReset, required String Email}) {
    emit(AppInitial());
    print('email= $Email');
    print('otp= $otpReset');
    DioHelper.postData(
        url: send_otp_forgotPassword,
        data: {'email': Email, 'otp': otpReset}).then((value) {
      emit(AppLoadingState());
      print(value.data);
      getResponsReset = RegisterModel.fromJson(value.data);
      emit(sendOtpResetSuccessState(getResponsReset));
    }).catchError((error) {
      print("error= ${error.toString()}");
      emit(sendOtpResetErrorState(error));
    });
  }

  //// create new password
  RegisterModel? responseCreatePassword;
  createNewPassword({required String newPassword}) {
    emit(AppInitial());
    String? national_ID = CacheHelper.getData(key: 'national_ID');
    print('national_ID= $national_ID');
    print('password= $newPassword');

    DioHelper.postData(
            url: create_password,
            data: {'national_ID': national_ID, 'password': newPassword})
        .then((value) {
      emit(AppLoadingState());
      print("value==${value.data}");
      responseCreatePassword = RegisterModel.fromJson(value.data);
      print('responseCreatePassword==${responseCreatePassword!.status}');
      emit(createPassordSuccessState(responseCreatePassword));
    }).catchError((error) {
      print("error= ${error.toString()}");
      emit(createPassordErrorState(error));
    });
  }

  //// update password
  RegisterModel? responseUpdatePassword;
  UpdatePassword({
    required String oldPassword,
    required String newPassword,
  }) {
    emit(AppInitial());
    String? national_ID = CacheHelper.getData(key: 'national_ID');
    print('national_ID= $national_ID');
    print('password= $newPassword');

    DioHelper.postData(url: update_password, data: {
      'national_ID': national_ID,
      'password': oldPassword,
      'newpassword': newPassword
    }).then((value) {
      emit(AppLoadingState());
      print("value==${value.data}");
      responseUpdatePassword = RegisterModel.fromJson(value.data);
      print('responseUpdatePassword==${responseUpdatePassword!.status}');
      emit(updatePassordSuccessState(responseUpdatePassword));
    }).catchError((error) {
      print("error= ${error.toString()}");
      emit(updatePassordErrorState(error));
    });
  }

  //// Charge Wallet
  walletModel? responseChargeWallet;
  ChargeWallet({
    required int visa_number,
    required String expire,
    required String The_owner_of_the_visa,
    required int cvv,
    required dynamic cost,
  }) {
    emit(AppInitial());
    String? national_ID = CacheHelper.getData(key: 'national_ID');
    print('national_ID= $national_ID');
    print('visa_number= $visa_number');
    print('cost= $cost');
    print('expire= $expire');
    print('The_owner_of_the_visa= $The_owner_of_the_visa');
    print('cvv= $cvv');

    DioHelper.postData(url: charge_wallet, data: {
      'national_ID': national_ID,
      'visa_number': visa_number,
      'cost': cost,
      'expire': expire,
      'The_owner_of_the_visa': The_owner_of_the_visa,
      'cvv': cvv,
    }).then((value) {
      emit(AppLoadingState());
      getUserData();
      print("value==${value.data}");
      responseChargeWallet = walletModel.fromJson(value.data);
      print('responseUpdatePassword==${responseChargeWallet!.status}');
      emit(chargeWalletSuccessState(responseChargeWallet));
    }).catchError((error) {
      print("error= ${error.toString()}");
      emit(chargeWalletErrorState(error));
    });
  }

  ////payment visa
  Model? responsePayvisa;
  payvisa({
    required int visa_number,
    required String expire,
    required String The_owner_of_the_visa,
    required int cvv,
    required var totalprice,
    required var count,
    required int? bus_id,
    required int? ticket_id,
    required String ticket_type,
  }) {
    emit(AppInitial());
    String? user_ID = CacheHelper.getData(key: 'id');
    DioHelper.postData(url: ticket_pay_visa, data: {
      'visa_number': visa_number,
      'expire': expire,
      'The_owner_of_the_visa': The_owner_of_the_visa,
      'cvv': cvv,
      "totalprice": totalprice,
      "count": count,
      'user_id': int.parse(user_ID!),
      "bus_id": bus_id == 0 ? null : bus_id,
      "ticket_id": ticket_id == 0 ? null : ticket_id,
      "ticket_type": ticket_type,
    }).then((value) {
      emit(AppLoadingState());
      print("value==${value.data}");
      responsePayvisa = Model.fromJson(value.data);
      print('response pay visa ==${responsePayvisa!.message}');
      emit(PayVisaSuccessState(responsePayvisa));
    }).catchError((error) {
      print("error= ${error.toString()}");
      emit(PayVisaErrorState(error));
    });
  }

//////payment wallet

  Model? responsePayWallet;
  payWallet({
    required var totalprice,
    required var count,
    required int? bus_id,
    required var ticket_id,
    required String ticket_type,
    required String password,
  }) {
    emit(AppInitial());
    String? user_ID = CacheHelper.getData(key: 'id');
    DioHelper.postData(url: ticket_pay_wallet, data: {
      "totalPrice": totalprice,
      "count": count,
      'user_id': int.parse(user_ID!),
      "bus_id": bus_id == 0 ? null : bus_id,
      "ticket_id": ticket_id == 0 ? null : ticket_id,
      "ticket_type": ticket_type,
      'password': password,
    }).then((value) {
      emit(AppLoadingState());
      print("value==${value.data}");
      responsePayWallet = Model.fromJson(value.data);
      print('response pay wallet ==${responsePayWallet!.message}');
      emit(PayWalletSuccessState(responsePayWallet));
    }).catchError((error) {
      print("error= ${error.toString()}");
      emit(PayWalletErrorState(error));
    });
  }
}
