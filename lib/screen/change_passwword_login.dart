// ignore_for_file: library_private_types_in_public_api, avoid_unnecessary_containers

import 'package:easy_ticket_app/cubit/app/app_cubit.dart';
import 'package:easy_ticket_app/screen/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../cubit/app/app_state.dart';
import '../widget/Buttom.dart';
import '../widget/constants.dart';
import '../widget/text_Form_Field.dart';

class ChangePasswordLoginScreen extends StatelessWidget {
  static const String routeName = 'Change Password LoginScreen';

  var newPasswordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  ChangePasswordLoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {
          if (state is createPassordSuccessState) {
            if (state.responseCreatePassword!.status != false) {
              navigateAndFinish(context, Sign_In());
              print('====${state.responseCreatePassword!.status}');
              print('====${state.responseCreatePassword!.message}');
              showToast(
                  text: state.responseCreatePassword!.message!,
                  state: ToastStates.success);
            } else if (state.responseCreatePassword!.status == false) {
              showToast(
                  text: state.responseCreatePassword!.message!,
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
          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Scaffold(
              body: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, Sign_In.routeName);
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.black,
                                size: 35,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 120,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Change Password',
                                style: TextStyle(
                                  fontSize: 26.0.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 70.0.h),
                              DefaultFormField(
                                controller: newPasswordController,
                                label: 'New Password',
                                validate: (String? value) {
                                  if (value!.trim().isEmpty) {
                                    return 'Please enter your Password';
                                  } else if (value.trim().length <= 6) {
                                    return 'is short password';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 20.0.h),
                              DefaultFormField(
                                controller: confirmPasswordController,
                                label: 'Confirm Password',
                                validate: (String? value) {
                                  if (value!.trim().isEmpty) {
                                    return 'Please enter your Confirm Password';
                                  }
                                  if (value.trim().length <= 6) {
                                    return 'is Not confirm Password';
                                  } else if (newPasswordController.text
                                          .trim() !=
                                      confirmPasswordController.text.trim()) {
                                    return "your confirm Password doesn't same";
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 50.0.h),
                              DefaultButtom(
                                Child: Text('Save',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22.0.sp,
                                        fontWeight: FontWeight.bold)),
                                Height: 35,
                                Width: 150,
                                PaddingHorizontal: 0,
                                PaddingVertical: 0,
                                OnTap: () {
                                  if (formKey.currentState!.validate()) {
                                    AppCubit.get(context).createNewPassword(
                                        newPassword:
                                            newPasswordController.text);
                                  }
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
