import 'package:easy_ticket_app/model/sign_in_model.dart';

abstract class SignInStates {}

//Login
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

//Profile
// class UserDataLoadingState extends SignInStates {}

// class UserDataSuccessState extends SignInStates {
//   UserDataSuccessState();
// }

// class UserDataErrorState extends SignInStates {
//   final String error;

//   UserDataErrorState(this.error);
// }
