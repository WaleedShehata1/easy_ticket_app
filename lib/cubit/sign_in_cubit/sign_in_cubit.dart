import 'package:bloc/bloc.dart';
import "../sign_in_cubit/sign_in_states.dart";

class SignInCubit extends Cubit<SignInStates> {
  SignInCubit() : super(SignInInitialState());
}
