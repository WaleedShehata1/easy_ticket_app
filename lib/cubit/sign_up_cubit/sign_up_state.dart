import '../../model/sign_in_model.dart';
import '../../model/user_register_model.dart';

abstract class SignUpStates {}

class SignUpInitialState extends SignUpStates {}

class SignUpLoadingState extends SignUpStates {}

class SignUpSuccessState extends SignUpStates {
   final RegisterModel? registerModel;
   SignUpSuccessState(this.registerModel);
}

class SignUpErrorState extends SignUpStates {
  final String error;

  SignUpErrorState(this.error);
}



class RegisterShowPassword extends SignUpStates {}
