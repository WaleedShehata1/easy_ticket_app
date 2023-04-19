// ignore_for_file: library_private_types_in_public_api, avoid_unnecessary_containers

import 'package:easy_ticket_app/screen/sign_in.dart';
import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  ChangePasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.close,
                      size: 30,
                    ))
              ],
            ),
            const Text(
              'Change Password',
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 35.0),
            DefaultFormField(
              controller: oldPasswordController,
              label: 'Current Password',
              validate: (p0) {
                return null;
              },
            ),
            const SizedBox(height: 15.0),
            DefaultFormField(
              controller: oldPasswordController,
              label: 'New Password',
              validate: (p0) {
                return null;
              },
            ),
            const SizedBox(height: 15.0),
            DefaultFormField(
              controller: oldPasswordController,
              label: 'Confirm Password',
              validate: (p0) {
                return null;
              },
            ),
            const SizedBox(height: 35.0),
            DefaultButtom(
              Child: const Text('Save',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
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
