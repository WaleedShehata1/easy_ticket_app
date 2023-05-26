// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names, must_be_immutable, sized_box_for_whitespace, avoid_print
import 'package:easy_ticket_app/cubit/sign_in/sign_in_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../cubit/sign_in/sign_in_cubit.dart';
import '../screen/get_password_reset_code.dart';
import '../widget/Buttom.dart';
import '../widget/components.dart';
import '../widget/constants.dart';
import '../widget/text_Form_Field.dart';

class SearchAccount extends StatelessWidget {
  var formKey2 = GlobalKey<FormState>();
  var searchAccountController = TextEditingController();

  SearchAccount({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(),
      child: BlocConsumer<SignInCubit, SignInStates>(
        listener: (context, state) {
          if (state is SignInSuccessState) {
            if (state.loginModel!.status == true) {
              CacheHelper.saveData(
                      key: 'email', value: state.loginModel!.data!.email)
                  .then((value) {
                CacheHelper.saveData(
                    key: 'uid', value: state.loginModel!.data!.uid);
                CacheHelper.saveData(
                    key: 'phone', value: state.loginModel!.data!.phone);
                Navigator.pushNamed(context, GetPasswordResetCode.routeName);
                showToast(
                    text: state.loginModel!.message!,
                    state: ToastStates.success);
              });
            } else if (state.loginModel!.status == false) {
              print(state.loginModel!);
              print(state.loginModel!.message);
              showToast(
                  text: state.loginModel!.message!, state: ToastStates.error);
            } else {
              showToast(
                  text:
                      'There is a problem connecting to the server or the Internet',
                  state: ToastStates.warning);
            }
          }
        },
        builder: (context, state) {
          return Container(
            width: double.infinity,
            child: Form(
              key: formKey2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.close_outlined,
                            size: 35.w,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Enter',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    'the national ID associated with your account.',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  DefaultFormField(
                    controller: searchAccountController,
                    label: null,
                    validate: (value) {
                      if (value!.trim().isEmpty) {
                        return 'enter your National ID';
                      } else if (value.length < 14) {
                        return 'Enter the national number consisting of 14 digits';
                      }
                      return null;
                    },
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(14),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  DefaultButtom(
                      Child: Text(
                        "Search",
                        style: TextStyle(fontSize: 24.sp),
                      ),
                      Height: 50,
                      Width: 200,
                      PaddingHorizontal: 0,
                      PaddingVertical: 0,
                      OnTap: () {
                        if (formKey2.currentState!.validate()) {
                          SignInCubit.get(context).searchAccount(
                              national_ID: searchAccountController.text,
                              context: context);
                        }
                      }),
                  SizedBox(
                    height: 20.h,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
