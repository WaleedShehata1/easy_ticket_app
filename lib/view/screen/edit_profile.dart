// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_print, unnecessary_brace_in_string_interps, must_be_immutable
// ignore_for_file: avoid_unnecessary_containers, library_private_types_in_public_api, non_constant_identifier_names, unused_field, prefer_final_fields, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:easy_ticket_app/widget/components.dart';
import 'package:easy_ticket_app/widget/container.dart';
import 'package:easy_ticket_app/widget/dialog.dart';

import '../Pop_Up/change_password.dart';
import '../../cubit/app/app_cubit.dart';
import '../../cubit/app/app_state.dart';
import '../../widget/Buttom.dart';
import '../../widget/constants.dart';
import '../../widget/text_Form_Field.dart';

class EditProfileScreen extends StatelessWidget {
  static const String routeName = 'Edite profile';

  var phoneController = TextEditingController();
  var healthstatusController = TextEditingController();
  var professionController = TextEditingController();
  var emailController = TextEditingController();

  var DateofBirth;
  var FirstName;
  var LastName;
  var NationaID;
  var Gender;

  var formKey = GlobalKey<FormState>();
  EditProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    emailController.text = user.userModel!.data!.email!;
    professionController.text = user.userModel!.data!.profession!;
    healthstatusController.text = user.userModel!.data!.health_status!;
    FirstName = user.userModel!.data!.first_Name!;
    LastName = user.userModel!.data!.last_Name!;
    phoneController.text = user.userModel!.data!.phone!;
    DateofBirth = user.userModel!.data!.date_of_birth!;
    NationaID = user.userModel!.data!.national_ID!;
    Gender = user.userModel!.data!.gender;
    return BlocProvider(
      create: (context) => AppCubit()..getUserData(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {
          if (state is AppLoadingState) const LinearProgressIndicator();
          if (state is UpdateSuccessState) {
            if (state.userModel2!.status != false) {
              Navigator.pop(context);

              print(state.userModel2!.data!.email);
              print(state.userModel2!.data!.phone);
              showToast(
                  text: state.userModel2!.message!, state: ToastStates.success);
            } else if (state.userModel2!.status == false) {
              showToast(
                  text: state.userModel2!.message!, state: ToastStates.error);
            } else {
              showToast(
                  text:
                      'There is a problem connecting to the server or the Internet',
                  state: ToastStates.warning);
            }
          }
        },
        builder: (context, state) {
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
                                Expanded(
                                    child: DefaultContaiiner(
                                        text: '${FirstName}')),
                                SizedBox(width: 16.w),
                                Expanded(
                                    child:
                                        DefaultContaiiner(text: '${LastName}')),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            DefaultContaiiner(text: '${NationaID}'),
                            SizedBox(height: 20.w),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child:
                                      DefaultContaiiner(text: '${DateofBirth}'),
                                ),
                                SizedBox(width: 16.w),
                                Expanded(
                                  child: DefaultContaiiner(text: '${Gender}'),
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
                                if (value!.trim().isEmpty ||
                                    value.length < 11) {
                                  return 'Please enter your phone';
                                }
                                return null;
                              },
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(11),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              controller: phoneController,
                            ),
                            const SizedBox(height: 16.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: DefaultFormField(
                                    label: 'Health Status',
                                    keyboardType: TextInputType.text,
                                    validate: (String? value) {
                                      if (value!.trim().isEmpty) {
                                        return 'Health status cannot be empty';
                                      }
                                      return null;
                                    },
                                    controller: healthstatusController,
                                  ),
                                ),
                                SizedBox(
                                  width: 16.w,
                                ),
                                Expanded(
                                  child: DefaultFormField(
                                    label: 'Profession',
                                    keyboardType: TextInputType.text,
                                    validate: (String? value) {
                                      if (value!.trim().isEmpty) {
                                        return 'Profession cannot be empty';
                                      }
                                      return null;
                                    },
                                    controller: professionController,
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
                                    return DefaultDialog(
                                      Child: ChangePasswordScreen(),
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
                                  AppCubit.get(context).updateUserData(
                                      profession: professionController.text,
                                      email: emailController.text,
                                      phone: phoneController.text,
                                      health_status:
                                          healthstatusController.text);
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
        },
      ),
    );
  }
}
