// ignore_for_file: library_private_types_in_public_api, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF48265),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: const [
              Text(
                'Change Password',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          const Padding(
            padding: EdgeInsets.only(
              right: 190.0,
            ),
            child: Text(
              'Old Password',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23.0),
              color: Colors.white,
              border: Border.all(color: Colors.grey),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                controller: oldPasswordController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          const Padding(
            padding: EdgeInsets.only(
              right: 180.0,
            ),
            child: Text(
              'New Password',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23.0),
              color: Colors.white,
              border: Border.all(color: Colors.grey),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                controller: newPasswordController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          const Padding(
            padding: EdgeInsets.only(
              right: 160.0,
            ),
            child: Text(
              'Confirm Password',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23.0),
              color: Colors.white,
              border: Border.all(color: Colors.grey),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                controller: confirmPasswordController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 32.0),
          Container(
            child: SizedBox(
              width: 150.0,
              height: 35.0,
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23.0),
                    ),
                    backgroundColor: Colors.white),
                child: const Text('Save',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
