// ignore_for_file: non_constant_identifier_names

import 'package:easy_ticket_app/cubit/sign_in_cubit/sign_in_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInCubit extends Cubit<SignInStates> {
  SignInCubit() : super(SignInInitialState());

  static SignInCubit get(context) => BlocProvider.of(context);

  void userLogin({
    required String national_ID ,
    required String password
  }){
emit(SignInLoadingState());

   /*  DioHelper.postData(
      url: LOGIN,
       data: {
        "national_ID":national_ID ,
        "password": password,
       },).then((value) {
         print(value?.data);
         emit(SignInSuccessState());
       }).catchError((error){
        print(error.toString());
        emit(SignInErrorState(error.toString()));
       }); */
        /* try {
      // Make HTTP request to API
      final response = await http.post(Uri.parse('https://example.com/api/login'), body: {
        'email': event.email,
        'password': event.password,
      });

      if (response.statusCode == 200) {
        // If login is successful, parse the JSON response and emit LoginSuccess state with user data.
        final json = jsonDecode(response.body);
        final user = User.fromJson(json);
        yield LoginSuccess(user: user);
      } else {
        // If login fails, emit LoginFailure state with error message.
        final errorMessage = 'Login failed. Please check your email and password.';
         SignInErrorState(errorMessage: errorMessage);
      }
    } catch (_) {
      // If there's an exception during the API call, emit LoginFailure state with error message.
      final errorMessage = 'An unexpected error occurred. Please try again later.';
      yield LoginFailure(errorMessage: errorMessage);
    } */
  }

  IconData suffix = Icons.visibility_outlined;

  bool isPassword = true;

  void showPassword() {
    isPassword = !isPassword;

    suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
        
    emit(ShowPassword());
  }
   

  /*  void sign_in({
     required String nationalID,
    required String password
    }
  
   ) async
   {
    var url = Uri.https('https://easyticket.website', '/api/auth/login');


     var response = await http.post(
        url,body: {
          "national_ID":nationalID,
          "password":password
        }
      ).then((value) {
      
      }).catchError(onError);



      //var responsebody =jsonDecode(response.body);




   } */
  
}
