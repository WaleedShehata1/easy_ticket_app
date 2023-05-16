import 'package:easy_ticket_app/model/sign_in_model.dart';

abstract class SignInStates {}

class SignInInitialState extends SignInStates {}

class SignInLoadingState extends SignInStates {}

class SignInSuccessState extends SignInStates {
  final SignInModel? loginModel;

  SignInSuccessState(this.loginModel);
}

class SignInErrorState extends SignInStates {
  final String error;

  SignInErrorState(this.error);
}

class ShowPassword extends SignInStates {}
