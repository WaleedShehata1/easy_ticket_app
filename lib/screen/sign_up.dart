// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, must_be_immutable, prefer_typing_uninitialized_variables

import 'package:easy_ticket_app/screen/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shapes/ticket_logo.dart';
import '../widget/components.dart';

class SignUp extends StatefulWidget {
  static const String routeName = 'Sign_Up';

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var NationalIDController = TextEditingController();
  var FirstNameController = TextEditingController();
  var LastNameController = TextEditingController();
  DateTime date = DateTime.now();
  DateTime? newdate;
  String? DateOfBirth = 'dd/mm/year';
  var PhoneController = TextEditingController();
  var EmailController = TextEditingController();
  var PasswordController = TextEditingController();
  var ConfirmPasswordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  var _Gendar;
  var _HealthStatus;
  var _Profession;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Center(
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                child: Form(
                  key: formKey,
                  child: Column(children: [
                    Transform.rotate(
                      angle: 44.75,
                      child: logoTicket,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 150,
                          child: DefaultFormField(
                            label: 'First Name',
                            keyboardType: TextInputType.number,
                            validate: (String? value) {
                              return null;
                            },
                            controller: FirstNameController,
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: DefaultFormField(
                            label: 'Last Name',
                            keyboardType: TextInputType.number,
                            validate: (String? value) {
                              return null;
                            },
                            controller: LastNameController,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DefaultFormField(
                      label: 'National ID',
                      keyboardType: TextInputType.number,
                      validate: (String? value) {
                        return null;
                      },
                      controller: NationalIDController,
                      MaxLength: 14,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 155,
                          child: GestureDetector(
                            onTap: () async {
                              newdate = await showDatePicker(
                                  context: context,
                                  initialDate: date,
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2100));
                              if (newdate == null) {
                                return;
                              } else {
                                setState(() {
                                  DateOfBirth =
                                      '${newdate?.day}/${newdate?.month}/${newdate?.year}';
                                });
                              }
                            },
                            child: Container(
                              height: 55,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ),
                                  border: Border.all(
                                      color: PrimaryColour, width: 2)),
                              child: Text('$DateOfBirth',style: const TextStyle(fontSize: 16,letterSpacing: 2,wordSpacing: 2),),
                            ),
                          ),
                        ),
                        DefaultDropdown(
                          hint: const Text('Profession'),
                          height: 56,
                          width: 160,
                          value: _Profession,
                          onChanged: (value) {
                            setState(() {
                              _Profession = value;
                            });
                          },
                          items: const [
                            DropdownMenuItem(
                              value: Text('Male'),
                              child: Text('Male'),
                            ),
                            DropdownMenuItem(
                              value: Text('Female'),
                              child: Text('Female'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DefaultFormField(
                      prefixIcon: const Icon(Icons.phone),
                      label: 'Phone',
                      keyboardType: TextInputType.number,
                      validate: (String? value) {
                        return null;
                      },
                      MaxLength: 11,
                      controller: PhoneController,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DefaultDropdown(
                          hint: const Text('Health Status'),
                          height: 56,
                          width: 160,
                          value: _HealthStatus,
                          onChanged: (value) {
                            setState(() {
                              _HealthStatus = value;
                            });
                          },
                          items: const [
                            DropdownMenuItem(
                              value: Text('Male'),
                              child: Text('Male'),
                            ),
                            DropdownMenuItem(
                              value: Text('Female'),
                              child: Text('Female'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        DefaultDropdown(
                          hint: const Text('Gendar'),
                          height: 56,
                          width: 160,
                          value: _Gendar,
                          onChanged: (value) {
                            setState(() {
                              _Gendar = value;
                            });
                          },
                          items: const [
                            DropdownMenuItem(
                              value: Text('Male'),
                              child: Text('Male'),
                            ),
                            DropdownMenuItem(
                              value: Text('Female'),
                              child: Text('Female'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DefaultFormField(
                      prefixIcon: const Icon(Icons.email_outlined),
                      label: 'Email',
                      keyboardType: TextInputType.number,
                      validate: (String? value) {
                        return null;
                      },
                      controller: EmailController,
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
                    const SizedBox(
                      height: 20,
                    ),
                    DefaultFormField(
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.visibility_off),
                        onPressed: () {},
                      ),
                      label: 'Confirm Password',
                      keyboardType: TextInputType.number,
                      validate: (String? value) {
                        return null;
                      },
                      controller: ConfirmPasswordController,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    DefaultButtom(
                      OnTap: () {},
                      Child:  Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 28.sp,
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
                          'If you already have an account,',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Sign_In.routeName);
                            },
                            child: Text(
                              'just login.',
                              style: TextStyle(
                                fontSize: 16,
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
