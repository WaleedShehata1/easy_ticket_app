// ignore_for_file: must_be_immutable

part of 'profile_cubit.dart';

@immutable
abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class ProfileLoadingState extends ProfileState {}

class ProfileSuccessState extends ProfileState {
  SignInModel? userModel;
  ProfileSuccessState(this.userModel);
}

class ProfileErrorState extends ProfileState {
  final String? error;
  ProfileErrorState(this.error);
}
