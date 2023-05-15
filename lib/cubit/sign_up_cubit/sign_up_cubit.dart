import 'package:easy_ticket_app/cubit/sign_up_cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit() : super(SignUpInitialState());

  static SignUpCubit get(context) => BlocProvider.of(context);

  IconData? suffix;

  bool isPassword = true;

  void showPassword() {
    isPassword = !isPassword;

    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(ShowPassword());
  }

  void userCreate({
    required String firstName,
    required String lastName,
    required String phone,
    required String email,
    required String uId,
  }) {
    /* 
     UserModel model = UserModel(
      email: email,
      phone: phone,
      userName: userName,
      uId: uId,
      image:
          'https://cdn-icons-png.flaticon.com/512/149/149071.png?w=740&t=st=1678640338~exp=1678640938~hmac=e46c26cecdbc9dea7a4a6d4ad5a8577aff6029704aa4d890caaebf20053dd65d',
    );
    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .set(model.toFireStore())
        .then((value) {
      emit(UserCreateSuccessState(uId));
    }).catchError((error) {
      emit(UserCreateErrorState(error.toString()));
    });  */
  }

  void userSignUp({
    required String password,
    required String email,
    required String phone,
    required String firstName,
    required String lastName,
  }) async {
    /*  await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
          email: email,
          password: password,
        ) 
        .then((value) => {
              userCreate(
                userName: userName,
                phone: phone,
                email: email,
                uId: value.user!.uid,
              ),
            })
        .catchError((error) {
      emit(SignUpErrorState(error.toString()));
      // print(error.toString());
    });*/
  }
}
