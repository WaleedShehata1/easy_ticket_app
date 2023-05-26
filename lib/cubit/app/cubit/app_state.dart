// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types, must_be_immutable
part of 'app_cubit.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}

class LoadingState extends AppState {}

class AppSuccessState extends AppState {
  final getData? getResponsEmailVerrification;

  AppSuccessState(this.getResponsEmailVerrification);
}

class AppErrorState extends AppState {
  final String? error;
  AppErrorState(this.error);
}

class UpdateSuccessState extends AppState {
  SignInModel? updateUserModel;
  UpdateSuccessState(userModel);
}

class UpdateErrorState extends AppState {
  final String error;

  UpdateErrorState(this.error);
}

class sendOtpResetSuccessState extends AppState {
  final getData? getResponsReset;
  sendOtpResetSuccessState(
    this.getResponsReset,
  );
}

class sendOtpResetErrorState extends AppState {
  final String error;

  sendOtpResetErrorState(this.error);
}
