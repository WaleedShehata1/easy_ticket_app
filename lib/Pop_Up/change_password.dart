// ignore_for_file: library_private_types_in_public_api, avoid_unnecessary_containers, must_be_immutable, avoid_print

import 'package:easy_ticket_app/cubit/app/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../cubit/app/app_state.dart';
import '../widget/Buttom.dart';
import '../widget/constants.dart';
import '../widget/text_Form_Field.dart';

class ChangePasswordScreen extends StatelessWidget {
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  ChangePasswordScreen({super.key});
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {
          if (state is updatePassordSuccessState) {
            if (state.responseUpdatePassword!.status != false) {
              print('message=${state.responseUpdatePassword!.message}');
              print('status=${state.responseUpdatePassword!.status}');
              Navigator.pop(context);
              showToast(
                  text: state.responseUpdatePassword!.message!,
                  state: ToastStates.success);
            } else if (state.responseUpdatePassword!.status == false) {
              showToast(
                  text: state.responseUpdatePassword!.message!,
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
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 5).w,
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
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
                              Icons.close,
                              size: 30.w,
                            ))
                      ],
                    ),
                    Text(
                      'Change Password',
                      style: TextStyle(
                        fontSize: 26.0.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 35.0.h),
                    DefaultFormField(
                      controller: oldPasswordController,
                      label: 'Old Password',
                      validate: (String? value) {
                        if (value!.trim().isEmpty) {
                          return 'Please enter your Old Password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 15.0.h),
                    DefaultFormField(
                      controller: newPasswordController,
                      label: 'New Password',
                      validate: (String? value) {
                        if (value!.trim().isEmpty) {
                          return 'Please enter your New Password';
                        } else if (value.trim().length <= 6) {
                          return 'is short password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 15.0.h),
                    DefaultFormField(
                      controller: confirmPasswordController,
                      label: 'Confirm Password',
                      validate: (String? value) {
                        if (value!.trim().isEmpty) {
                          return 'Please enter your Confirm Password';
                        } else if (confirmPasswordController.text.trim() !=
                            confirmPasswordController.text.trim()) {
                          return "your confirm Password doesn't same";
                        }

                        return null;
                      },
                    ),
                    SizedBox(height: 35.0.h),
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
                          AppCubit.get(context).UpdatePassword(
                              newPassword: newPasswordController.text,
                              oldPassword: oldPasswordController.text);
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
