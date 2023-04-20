// ignore_for_file: camel_case_types, non_constant_identifier_names, must_be_immutable

import 'package:easy_ticket_app/Pop_Up/searsh_account.dart';
import 'package:easy_ticket_app/screen/bottom_bar.dart';
import 'package:easy_ticket_app/screen/get_password_reset_code.dart';
import 'package:easy_ticket_app/screen/sign_up.dart';
import 'package:easy_ticket_app/shapes/ticket_logo.dart';
import 'package:flutter/material.dart';

import '../widget/components.dart';

class Sign_In extends StatelessWidget {
  Sign_In({super.key});

  static const String routeName = 'Sign_im';
  var NationalIDController = TextEditingController();
  var PasswordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(children: [
                    Transform.rotate(
                      angle: 44.75,
                      child: logoTicket,
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    DefaultFormField(
                      prefixIcon: const Icon(Icons.account_circle),
                      label: 'National ID',
                      keyboardType: TextInputType.number,
                      validate: (String? value) {
                        return null;
                      },
                      controller: NationalIDController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DefaultFormField(
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.visibility_off),
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
                                return DefaultDialog(Child:SearshAccount(
                                  Validate: (p0) {
                                    return null;
                                  },
                                  onTap: () {
                                    Navigator.pushReplacementNamed(context, GetPasswordResetCode.routeName);
                                  },
                                  ),
                                );
                              },
                            );
                          },
                          child: Text(
                            'Forget Password?',
                            style: TextStyle(
                              fontSize: 15,
                              color: PrimaryColour,
                            ),
                          ),
                        ),
                      ],
                    ),
                    DefaultButtom(
                      OnTap: () =>
                          Navigator.pushNamed(context, BottomBar.routeName),
                      Child: const Text(
                        'Log In',
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Height: 65,
                      Width: double.infinity,
                      PaddingHorizontal: 30,
                      PaddingVertical: 0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          'Don’t have an account?',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, SignUp.routeName);
                            },
                            child: Text(
                              'Sign up.',
                              style: TextStyle(
                                fontSize: 14,
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
        ),
      ),
    );
  }
}
