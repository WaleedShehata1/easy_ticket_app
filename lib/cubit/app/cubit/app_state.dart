part of 'app_cubit.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}

class AppLoadingState extends AppState {}

class AppSuccessState extends AppState {
  final getData? getResponsEmailVerrification;

  AppSuccessState(this.getResponsEmailVerrification);
}

class AppErrorState extends AppState {
  final String? error;
  AppErrorState(this.error);
}

class UpdateLoadingState extends AppState {}

class UpdateSuccessState extends AppState {
  UpdateSuccessState(userModel);
}

class UpdateErrorState extends AppState {
  final String error;

  UpdateErrorState(this.error);
}
