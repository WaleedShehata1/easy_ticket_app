// ignore_for_file: camel_case_types, non_constant_identifier_names, must_be_immutable

import 'package:easy_ticket_app/Pop_Up/searsh_account.dart';
import 'package:easy_ticket_app/cubit/sign_in_cubit/sign_in_states.dart';
import 'package:easy_ticket_app/screen/bottom_bar.dart';
import 'package:easy_ticket_app/screen/get_password_reset_code.dart';
import 'package:easy_ticket_app/screen/sign_up.dart';
import 'package:easy_ticket_app/shapes/ticket_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../cubit/sign_in_cubit/sign_in_cubit.dart';
import '../widget/components.dart';

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
            listener: (context, state) {},
            builder: (context, state) {
              return Scaffold(
                backgroundColor: Colors.white,
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
                            suffixIcon: IconButton(
                              padding: EdgeInsetsDirectional.only(end: 30.w),
                              icon: Icon(
                                Icons.visibility_off,
                                size: 30.h,
                              ),
                              onPressed: () {},
                            ),
                            label: 'Password',
                            keyboardType: TextInputType.number,
                            validate: (String? value) {
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
                                        Child: SearshAccount(
                                          Validate: (p0) {
                                            return null;
                                          },
                                          onTap: () {
                                            Navigator.pushReplacementNamed(
                                                context,
                                                GetPasswordResetCode.routeName);
                                          },
                                        ),
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
                          DefaultButtom(
                            OnTap: () => Navigator.pushNamed(
                                context, BottomBar.routeName),
                            Child: Text(
                              'Log In',
                              style: TextStyle(
                                fontSize: 28.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Height: 25.h,
                            Width: double.infinity,
                            PaddingHorizontal: 30.w,
                            PaddingVertical: 0.h,
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
