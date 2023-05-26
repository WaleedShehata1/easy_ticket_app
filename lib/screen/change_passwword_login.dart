// ignore_for_file: library_private_types_in_public_api, avoid_unnecessary_containers

import 'package:easy_ticket_app/screen/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/Buttom.dart';
import '../widget/text_Form_Field.dart';

class ChangePasswordLoginScreen extends StatelessWidget {
  static const String routeName = 'Change Password LoginScreen';
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  ChangePasswordLoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: SingleChildScrollView(
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
                      controller: oldPasswordController,
                      label: 'New Password',
                      validate: (p0) {
                        return null;
                      },
                    ),
                    SizedBox(height: 20.0.h),
                    DefaultFormField(
                      controller: oldPasswordController,
                      label: 'Confirm Password',
                      validate: (p0) {
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
                        Navigator.pushReplacementNamed(
                            context, Sign_In.routeName);
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
