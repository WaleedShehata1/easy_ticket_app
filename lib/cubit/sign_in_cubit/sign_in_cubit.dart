// ignore_for_file: non_constant_identifier_names, avoid_print

import 'dart:convert';

import 'package:easy_ticket_app/cubit/sign_in_cubit/sign_in_states.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInCubit extends Cubit<SignInStates> {
  SignInCubit() : super(SignInInitialState());

  static SignInCubit get(context) => BlocProvider.of(context);
 IconData suffix = Icons.visibility_outlined;

  bool isPassword = true;

  void showPassword() {
    isPassword = !isPassword;

    suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
        
    emit(ShowPassword());}
 
  Stream<Future<void>> userLogin(
      {required String national_ID, required String password}) async* {
    try {
      emit(SignInLoadingState());
      final response = await http.post(
        Uri.parse('https://easyticket.website/api/auth/login'),
        body: {'national_ID': national_ID, 'password': password},
      );
      final data = json.decode(response.body);
      print(data);
      // handle the response data and update the state accordingly
      emit(SignInSuccessState(data['id']));
    } catch (e) {
      emit(SignInErrorState(e.toString()));
    }
  }
}

