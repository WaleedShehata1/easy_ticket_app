// ignore_for_file: library_private_types_in_public_api, avoid_unnecessary_containers

import 'package:easy_ticket_app/screen/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/Buttom.dart';
import '../widget/text_Form_Field.dart';

class ChangePasswordScreen extends StatelessWidget {
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  ChangePasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5).w,
      child: SingleChildScrollView(
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
              label: 'Current Password',
              validate: (p0) {
                return null;
              },
            ),
            SizedBox(height: 15.0.h),
            DefaultFormField(
              controller: oldPasswordController,
              label: 'New Password',
              validate: (p0) {
                return null;
              },
            ),
            SizedBox(height: 15.0.h),
            DefaultFormField(
              controller: oldPasswordController,
              label: 'Confirm Password',
              validate: (p0) {
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
                Navigator.pushReplacementNamed(context, Sign_In.routeName);
              },
            )
          ],
        ),
      ),
    );
  }
}
