// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, must_be_immutable, prefer_typing_uninitialized_variables, unused_field, prefer_final_fields, deprecated_member_use, avoid_print

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:easy_ticket_app/screen/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../cubit/sign_up_cubit/sign_up_cubit.dart';
import '../cubit/sign_up_cubit/sign_up_state.dart';
import '../shapes/ticket_logo.dart';
import '../widget/Buttom.dart';
import '../widget/components.dart';
import '../widget/constants.dart';
import '../widget/drop_down_list.dart';
import '../widget/text_Form_Field.dart';

class SignUp extends StatefulWidget {
  static const String routeName = 'Sign_Up';

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var NationalIDController = TextEditingController();
  var FirstNameController = TextEditingController();
  var LastNameController = TextEditingController();
  var PhoneController = TextEditingController();
  var EmailController = TextEditingController();
  var PasswordController = TextEditingController();
  var ConfirmPasswordController = TextEditingController();
  var _date = TextEditingController();
  DateTime date = DateTime.now();
  DateTime? newdate;
  var _Gendar;
  var _HealthStatus;
  var _Profession;

  var formKey = GlobalKey<FormState>();

  var _HealthStatusList = [
    'heart disease',
    'Diabetes',
    'Pressure disease',
    'Healthy'
  ];
  var _GendarList = ['Male', 'Female'];
  var _ProfessionList = ['Study', 'Senuor', 'Pressure disease', 'Healthy'];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Center(
        child: SafeArea(
          child: BlocProvider(
            create: (context) => SignUpCubit(),
            child: BlocConsumer<SignUpCubit, SignUpStates>(
              listener: (context, state) {
                if (state is SignUpSuccessState) {
                  if (state.registerModel!.status != false) {
                    print("status=${state.registerModel!.status}");
                    print("message=${state.registerModel!.message}");
                    navigateAndFinish(context, Sign_In());
                    showToast(
                        text: state.registerModel!.message!,
                        state: ToastStates.success);
                  } else if (state.registerModel!.status == false) {
                    print("status=${state.registerModel!.status}");
                    print("message=${state.registerModel!.message}");
                    print(state.registerModel!.message);
                    showToast(
                        text: state.registerModel!.message!,
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
                return Scaffold(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  body: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 15.h),
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
                                  keyboardType: TextInputType.text,
                                  validate: (String? value) {
                                    if (value!.trim().isEmpty) {
                                      return 'Please enter your First Name';
                                    }
                                    return null;
                                  },
                                  controller: FirstNameController,
                                ),
                              ),
                              SizedBox(
                                width: 150.w,
                                child: DefaultFormField(
                                  label: 'Last Name',
                                  keyboardType: TextInputType.text,
                                  validate: (String? value) {
                                    if (value!.trim().isEmpty) {
                                      return 'Please enter your Last Name';
                                    }
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
                              if (value!.trim().isEmpty) {
                                return 'Please enter your National ID';
                              } else if (value.length < 14) {
                                return 'Enter the national number consisting of 14 digits';
                              }
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
                                width: 155.w,
                                child: DefaultFormField(
                                  controller: _date,
                                  label: 'Date Of Birth',
                                  prefixIcon: const Icon(Icons.calendar_today),
                                  onTap: () async {
                                    newdate = await showDatePicker(
                                        context: context,
                                        initialDate: date,
                                        firstDate: DateTime(1900),
                                        lastDate: DateTime(2100));
                                    if (newdate != null) {
                                      setState(() {
                                        _date.text =
                                            '${newdate?.year}-${newdate?.month}-${newdate?.day}';
                                      });
                                    }
                                  },
                                  validate: (String? value) {
                                    if (value!.trim().isEmpty) {
                                      return 'Please enter your Date Of Birth';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 155.w,
                                child: DefaultDropdown(
                                  validator: (value) {
                                    if (value == null) {
                                      return 'Please select your Profession';
                                    }
                                    return null;
                                  },
                                  labelText: 'Profession',
                                  labelStyle: TextStyle(
                                      fontSize: 14.sp,
                                      color: PrimaryColour,
                                      fontWeight: FontWeight.bold),
                                  value: _Profession,
                                  items: _ProfessionList.map<
                                      DropdownMenuItem<String>>((String value) {
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
                            keyboardType: TextInputType.phone,
                            validate: (String? value) {
                              if (value!.trim().isEmpty) {
                                return 'Please enter your phone';
                              } else if (value.length < 11) {
                                return 'Enter the phone number consisting of 11 digits';
                              }
                              return null;
                            },
                            MaxLength: 11,
                            controller: PhoneController,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 155.w,
                                child: DefaultDropdown(
                                  labelText: 'Health Status',
                                  labelStyle: TextStyle(
                                      fontSize: 14.sp,
                                      color: PrimaryColour,
                                      fontWeight: FontWeight.bold),
                                  validator: (value) {
                                    if (value == null) {
                                      return 'Please enter your Health Status';
                                    }
                                    return null;
                                  },
                                  value: _HealthStatus,
                                  onChanged: (value) {
                                    setState(() {
                                      _HealthStatus = value;
                                    });
                                  },
                                  items: _HealthStatusList.map<
                                      DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              SizedBox(
                                width: 155.w,
                                child: DefaultDropdown(
                                  labelText: 'Gender',
                                  labelStyle: TextStyle(
                                      fontSize: 14.sp,
                                      color: PrimaryColour,
                                      fontWeight: FontWeight.bold),
                                  validator: (value) {
                                    if (value == null) {
                                      return 'Please enter your Gender';
                                    }
                                    return null;
                                  },
                                  items:
                                      _GendarList.map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  value: _Gendar,
                                  onChanged: (value) {
                                    setState(() {
                                      _Gendar = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          DefaultFormField(
                            prefixIcon: const Icon(Icons.email_outlined),
                            label: 'Email',
                            keyboardType: TextInputType.emailAddress,
                            validate: (String? value) {
                              if (value!.trim().isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                            controller: EmailController,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          DefaultFormField(
                            isPassword: SignUpCubit.get(context).isPassword,
                            prefixIcon: const Icon(Icons.lock_outline),
                            suffixIcon: SignUpCubit.get(context).suffix,
                            suffixPressed: () {
                              SignUpCubit.get(context).showPassword();
                            },
                            label: 'Password',
                            controller: PasswordController,
                            keyboardType: TextInputType.text,
                            validate: (String? value) {
                              if (value!.trim().isEmpty) {
                                return 'Please enter your Password';
                              } else if (value.trim().length <= 6) {
                                return 'is short password';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          DefaultFormField(
                            isPassword:
                                SignUpCubit.get(context).isConfirmPassword,
                            suffixIcon: SignUpCubit.get(context).suffixConfirm,
                            suffixPressed: () {
                              SignUpCubit.get(context).showConfirmPassword1();
                            },
                            label: 'Confirm Password',
                            keyboardType: TextInputType.text,
                            validate: (String? value) {
                              if (value!.trim().isEmpty) {
                                return 'Please enter your Confirm Password';
                              }
                              if (value.trim().length <= 6) {
                                return 'No';
                              } else if (PasswordController.text.trim() !=
                                  ConfirmPasswordController.text.trim()) {
                                return "your confirm Password doesn't same";
                              }

                              return null;
                            },
                            controller: ConfirmPasswordController,
                          ),
                          SizedBox(
                            height: 35.h,
                          ),
                          ConditionalBuilder(
                            condition: state is! SignUpLoadingState,
                            builder: (context) {
                              return DefaultButtom(
                                OnTap: () {
                                  if (formKey.currentState!.validate()) {
                                    SignUpCubit.get(context).userRegister(
                                      password: PasswordController.text,
                                      email: EmailController.text,
                                      phone: PhoneController.text,
                                      date_of_birth: _date.text,
                                      first_Name: FirstNameController.text,
                                      gender: _Gendar,
                                      health_status: _HealthStatus,
                                      last_Name: LastNameController.text,
                                      national_ID: NationalIDController.text,
                                      profession: _Profession,
                                    );
                                  }
                                },
                                Child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    fontSize: 28.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Height: 43,
                                Width: double.infinity,
                                PaddingHorizontal: 30,
                                PaddingVertical: 0,
                                radius: 15,
                              );
                            },
                            fallback: (BuildContext context) => Center(
                                child: CircularProgressIndicator(
                              color: PrimaryColour,
                            )),
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
                                  color: Theme.of(context)
                                      .textTheme
                                      .subtitle2!
                                      .color!,
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, Sign_In.routeName);
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
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
