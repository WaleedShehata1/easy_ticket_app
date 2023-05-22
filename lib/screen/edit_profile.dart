// ignore_for_file: avoid_unnecessary_containers, library_private_types_in_public_api, non_constant_identifier_names, unused_field, prefer_final_fields, prefer_typing_uninitialized_variables

import 'package:easy_ticket_app/cubit/profile/profile_cubit.dart';
import 'package:easy_ticket_app/widget/components.dart';
import 'package:easy_ticket_app/widget/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Pop_Up/change_password.dart';
import '../widget/Buttom.dart';
import '../widget/drop_down_list.dart';
import '../widget/text_Form_Field.dart';

class EditProfileScreen extends StatefulWidget {
  static const String routeName = 'Edite profile';

  const EditProfileScreen({super.key});

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController professionController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController healthStatusController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  var _HealthStatusList = [
    'heart disease',
    'Diabetes',
    'Pressure disease',
    'Healthy'
  ];
  var _professionList = ['study', 'senior', 'Pressure disease', 'Healthy'];

  var _HealthStatus;

  var _Profession;
  @override
  Widget build(BuildContext context) {
    phoneController.text = '01010100666';

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 80.h,
                decoration: BoxDecoration(
                  color: PrimaryColour,
                  borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))
                      .r,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 25.w,
                          ),
                        ),
                        SizedBox(
                          width: 80.w,
                        ),
                        Text(
                          'Edit Account',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 26.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(20.0).w,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Expanded(
                              child: DefaultContaiiner(text: 'First Name')),
                          SizedBox(width: 16.w),
                          const Expanded(
                              child: DefaultContaiiner(text: 'Last Name')),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      const DefaultContaiiner(text: 'National ID'),
                      SizedBox(height: 20.w),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Expanded(
                            child: DefaultContaiiner(text: 'Birth Date'),
                          ),
                          SizedBox(width: 16.w),
                          const Expanded(
                            child: DefaultContaiiner(text: 'Gender'),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
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
                        controller: phoneController,
                      ),
                      const SizedBox(height: 5.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
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
                            width: 16.w,
                          ),
                          Expanded(
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
                              items: _HealthStatusList.map<
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
                      const SizedBox(height: 16.0),
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
                        controller: emailController,
                      ),
                      SizedBox(height: 15.h),
                      DefaultButtom(
                        Child: Text(
                          'Change Password',
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w800),
                        ),
                        Height: 35.h,
                        Width: 150.w,
                        PaddingHorizontal: 10.w,
                        PaddingVertical: 10.h,
                        radius: 15.r,
                        OnTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                child: ChangePasswordScreen(),
                              );
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      DefaultButtom(
                        Child: Text(
                          'Save Changes',
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w800),
                        ),
                        Height: 40.h,
                        Width: 200.w,
                        PaddingHorizontal: 10.w,
                        PaddingVertical: 10.h,
                        radius: 15.r,
                        OnTap: () {
                          if (formKey.currentState!.validate()) {
                            ProfileCubit.get(context).updateUserData(
                                profession: professionController.text,
                                health_status: healthStatusController.text,
                                email: emailController.text,
                                phone: phoneController.text);
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
