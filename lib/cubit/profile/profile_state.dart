// ignore_for_file: must_be_immutable

part of 'profile_cubit.dart';

@immutable
abstract class ProfileState {}

SignInModel? userModel;

class ProfileInitial extends ProfileState {}

class ProfileLoadingState extends ProfileState {}

class ProfileSuccessState extends ProfileState {
  ProfileSuccessState(userModel);
}

class ProfileErrorState extends ProfileState {
  final String? error;
  ProfileErrorState(this.error);
}

//Update
class UpdateInitialState extends ProfileState {}

class UpdateLoadingState extends ProfileState {}

class UpdateSuccessState extends ProfileState {
  UpdateSuccessState(userModel);
}

class UpdateErrorState extends ProfileState {
  final String error;

  UpdateErrorState(this.error);
}
