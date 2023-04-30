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

  var _HealthStatusList = [
    'heart disease',
    'Diabetes',
    'Pressure disease',
    'Healthy'
  ];

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
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                child: Form(
                  key: formKey,
                  child: Column(children: [
                    Transform.rotate(
                      angle: 44.75,
                      child: logoTicket,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 150.w,
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
                          width: 150.w,
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
                    SizedBox(
                      height: 20.h,
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
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 140.w,
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
                              height: 35.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ).r,
                                  border: Border.all(
                                      color: PrimaryColour, width: 2)),
                              child: Text(
                                '$DateOfBirth',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    letterSpacing: 2,
                                    wordSpacing: 2),
                              ),
                            ),
                          ),
                        ),
                        DefaultDropdown(
                          hint: Text(
                            'Profession',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                          value: _Profession,
                          items:
                              _HealthStatusList.map<DropdownMenuItem<String>>(
                                  (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _Profession = value;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    DefaultFormField(
                      prefixIcon: Icon(
                        Icons.phone,
                        size: 20.h,
                      ),
                      label: 'Phone',
                      keyboardType: TextInputType.number,
                      validate: (String? value) {
                        return null;
                      },
                      MaxLength: 11,
                      controller: PhoneController,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DefaultDropdown(
                          hint: Text(
                            'Health Status',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                          value: _HealthStatus,
                          onChanged: (value) {
                            setState(() {
                              _HealthStatus = value;
                            });
                          },
                          items:
                              _HealthStatusList.map<DropdownMenuItem<String>>(
                                  (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        DefaultDropdown(
                          hint: Text(
                            'Gender',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                          items:
                              _HealthStatusList.map<DropdownMenuItem<String>>(
                                  (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          value: _HealthStatus,
                          onChanged: (value) {
                            setState(() {
                              _HealthStatus = value;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
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
                    SizedBox(
                      height: 20.h,
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
                    SizedBox(
                      height: 20.h,
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
                    SizedBox(
                      height: 35.h,
                    ),
                    DefaultButtom(
                      OnTap: () {},
                      Child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 28.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Height: 25.h,
                      Width: double.infinity,
                      PaddingHorizontal: 30,
                      PaddingVertical: 0,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 15.w,
                        ),
                        Text(
                          'already have an account?',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Sign_In.routeName);
                            },
                            child: Text(
                              'Login.',
                              style: TextStyle(
                                fontSize: 16.sp,
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
