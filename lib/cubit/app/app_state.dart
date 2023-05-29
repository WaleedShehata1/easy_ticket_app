// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types, must_be_immutable

import '../../model/user_register_model.dart';
import '../../model/wallet_charge_model.dart';

abstract class AppState {}

class AppInitial extends AppState {}

class AppLoadingState extends AppState {}

class AppSuccessState extends AppState {
  final RegisterModel? getResponsEmailVerrification;

  AppSuccessState(this.getResponsEmailVerrification);
}

class AppErrorState extends AppState {
  final String? error;
  AppErrorState(this.error);
}

class UpdateSuccessState extends AppState {
  final RegisterModel? userModel2;
  UpdateSuccessState(this.userModel2);
}

class UpdateErrorState extends AppState {
  final String error;

  UpdateErrorState(this.error);
}

class sendOtpResetSuccessState extends AppState {
  final RegisterModel? getResponsReset;
  sendOtpResetSuccessState(
    this.getResponsReset,
  );
}

class sendOtpResetErrorState extends AppState {
  final String error;

  sendOtpResetErrorState(this.error);
}

class ShowSuccessState extends AppState {
  final RegisterModel? loginModel;
  ShowSuccessState(this.loginModel);
}

class ShowErrorState extends AppState {
  final String error;

  ShowErrorState(this.error);
}

class createPassordSuccessState extends AppState {
  final RegisterModel? responseCreatePassword;
  createPassordSuccessState(
    this.responseCreatePassword,
  );
}

class createPassordErrorState extends AppState {
  final String error;

  createPassordErrorState(this.error);
}

class updatePassordSuccessState extends AppState {
  final RegisterModel? responseUpdatePassword;
  updatePassordSuccessState(
    this.responseUpdatePassword,
  );
}

class updatePassordErrorState extends AppState {
  final String error;

  updatePassordErrorState(this.error);
}

class chargeWalletSuccessState extends AppState {
  final walletModel? chargeWallet;
  chargeWalletSuccessState(
    this.chargeWallet,
  );
}

class chargeWalletErrorState extends AppState {
  final String error;

  chargeWalletErrorState(this.error);
}
