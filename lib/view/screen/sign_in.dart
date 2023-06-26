// ignore_for_file: camel_case_types, non_constant_identifier_names, must_be_immutable, deprecated_member_use, avoid_print, unnecessary_null_comparison

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:easy_ticket_app/view/Pop_Up/search_account.dart';
import 'package:easy_ticket_app/cubit/sign_in/sign_in_states.dart';
import 'package:easy_ticket_app/view/screen/otp_code.dart';
import 'package:easy_ticket_app/view/screen/sign_up.dart';
import 'package:easy_ticket_app/view/shapes/ticket_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../cubit/sign_in/sign_in_cubit.dart';
import '../../widget/Buttom.dart';
import '../../widget/components.dart';
import '../../widget/dialog.dart';
import '../../widget/text_Form_Field.dart';
import 'bottom_bar.dart';
import '../../widget/constants.dart';

class Sign_In extends StatelessWidget {
  Sign_In({super.key});

  static const String routeName = 'Sign_in';
  var NationalIDController = TextEditingController();
  var PasswordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: BlocProvider(
          create: (BuildContext context) => SignInCubit(),
          child: BlocConsumer<SignInCubit, SignInStates>(
            listener: (context, state) {
              if (state is SignInSuccessState) {
                if (state.loginModel!.status == true) {
                  CacheHelper.saveData(
                          key: 'token', value: state.loginModel!.token)
                      .then((value) {
                    print(state.loginModel!.token);
                    CacheHelper.saveData(
                        key: 'uid', value: state.loginModel!.data!.uid);
                    CacheHelper.saveData(
                        key: 'email', value: state.loginModel!.data!.email);
                    if (state.loginModel!.data!.email_verified_at == null) {
                      navigateAndFinish(
                        context,
                        OtpForm(
                          sendBy: CacheHelper.getData(key: 'email'),
                        ),
                      );
                    } else {
                      navigateAndFinish(
                        context,
                        const BottomBar(),
                      );
                    }
                    showToast(
                        text: state.loginModel!.message!,
                        state: ToastStates.success);
                  });
                } else if (state.loginModel!.status == false) {
                  print(state.loginModel!);
                  print(state.loginModel!.message);
                  showToast(
                      text: state.loginModel!.message!,
                      state: ToastStates.error);
                } else {
                  showToast(
                      text:
                          'There is a problem connecting to the server or the Internet',
                      state: ToastStates.warning);
                }
              }
            },
            builder: (context, state) {
              return Scaffold(
                body: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: SingleChildScrollView(
                      child: Form(
                        key: formKey,
                        child: Column(children: [
                          Transform.rotate(
                            angle: 44.75,
                            child: logoTicket,
                          ),
                          SizedBox(
                            height: 80.h,
                          ),
                          DefaultFormField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(14),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            prefixIcon: Padding(
                              padding: EdgeInsetsDirectional.only(
                                  start: 10.w, end: 10.w),
                              child: Icon(
                                Icons.account_circle,
                                size: 30.h,
                              ),
                            ),
                            label: 'National ID',
                            keyboardType: TextInputType.number,
                            validate: (String? value) {
                              if (value!.trim().isEmpty) {
                                return 'Please enter your National ID';
                              } else if (value.length < 14) {
                                return 'Enter the national number consisting of 14 digits';
                              }
                              return null;
                            },
                            controller: NationalIDController,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          DefaultFormField(
                            prefixIcon: Padding(
                              padding: EdgeInsetsDirectional.only(
                                  start: 10.w, end: 10.w),
                              child: Icon(
                                Icons.lock_outline,
                                size: 30.h,
                              ),
                            ),
                            isPassword: SignInCubit.get(context).isPassword,
                            suffixIcon: SignInCubit.get(context).suffix,
                            suffixPressed: () {
                              SignInCubit.get(context).showPasswordLogin();
                            },
                            label: 'Password',
                            keyboardType: TextInputType.text,
                            validate: (String? value) {
                              if (value!.trim().isEmpty) {
                                return 'Please enter your Password';
                              } else if (value.trim().length <= 6) {
                                return 'is short password';
                              }
                              return null;
                            },
                            controller: PasswordController,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return DefaultDialog(
                                        Child: SearchAccount(),
                                      );
                                    },
                                  );
                                },
                                child: Text(
                                  'Forget Password?',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: PrimaryColour,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          ConditionalBuilder(
                            condition: state is! SignInLoadingState,
                            builder: (context) => DefaultButtom(
                              OnTap: () {
                                if (formKey.currentState!.validate()) {
                                  SignInCubit.get(context).userLogin(
                                      national_ID: NationalIDController.text,
                                      password: PasswordController.text,
                                      context: context);
                                }
                              },
                              Child: Text(
                                'Log In',
                                style: TextStyle(
                                  fontSize: 28.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Height: 43,
                              Width: double.infinity,
                              PaddingHorizontal: 30,
                              PaddingVertical: 0,
                              radius: 15,
                            ),
                            fallback: (BuildContext context) => Center(
                                child: CircularProgressIndicator(
                              color: PrimaryColour,
                            )),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                'Don\'t have an account?',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context)
                                      .textTheme
                                      .subtitle2!
                                      .color!,
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, SignUp.routeName);
                                  },
                                  child: Text(
                                    'Sign up.',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: PrimaryColour,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ))
                            ],
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
