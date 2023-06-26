// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types, must_be_immutable

import 'package:easy_ticket_app/model/metro.dart';

import '../../model/my_ticket.dart';
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

class AppSuccess extends AppState {
  final BusTicket? busTicket;
  AppSuccess(this.busTicket);
}

class AppError extends AppState {
  final String? error;
  AppError(this.error);
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

class PayVisaSuccessState extends AppState {
  final Model? payVisa;
  PayVisaSuccessState(
    this.payVisa,
  );
}

class PayVisaErrorState extends AppState {
  final String error;

  PayVisaErrorState(this.error);
}

class PayWalletSuccessState extends AppState {
  final Model? payWallet;
  PayWalletSuccessState(
    this.payWallet,
  );
}

class PayWalletErrorState extends AppState {
  final String error;

  PayWalletErrorState(this.error);
}
