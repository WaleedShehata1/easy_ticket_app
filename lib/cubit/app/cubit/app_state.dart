// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types, must_be_immutable
part of 'app_cubit.dart';

abstract class AppState {}

class AppInitial extends AppState {}

class LoadingState extends AppState {}

class AppSuccessState extends AppState {
  final RegisterModel? getResponsEmailVerrification;

  AppSuccessState(this.getResponsEmailVerrification);
}

class AppErrorState extends AppState {
  final String? error;
  AppErrorState(this.error);
}

class UpdateSuccessState extends AppState {
  SignInModel? userModel;
  UpdateSuccessState(userModel);
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
  final SignInModel? loginModel;
  ShowSuccessState(this.loginModel);
}

class ShowErrorState extends AppState {
  final String error;

  ShowErrorState(this.error);
}
