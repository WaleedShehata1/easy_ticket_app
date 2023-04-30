import 'package:flutter_bloc/flutter_bloc.dart';
import "../sign_in_cubit/sign_in_states.dart";

class SignInCubit extends Cubit<SignInStates> {
  SignInCubit() : super(SignInInitialState());

  static SignInCubit get(context) => BlocProvider.of(context);
}
