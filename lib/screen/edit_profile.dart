// ignore_for_file: avoid_unnecessary_containers, library_private_types_in_public_api, non_constant_identifier_names, unused_field, prefer_final_fields, prefer_typing_uninitialized_variables
import 'package:easy_ticket_app/widget/components.dart';
import 'package:easy_ticket_app/widget/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Pop_Up/change_password.dart';
import '../cubit/app/cubit/app_cubit.dart';
import '../widget/Buttom.dart';
import '../widget/drop_down_list.dart';
import '../widget/text_Form_Field.dart';

class EditProfileScreen extends StatelessWidget {
  static const String routeName = 'Edite profile';

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController healthstatusController = TextEditingController();
  final TextEditingController professionController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {
          if (State is LoadingState) const LinearProgressIndicator();
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
                                const Expanded(
                                    child:
                                        DefaultContaiiner(text: "first name")),
                                SizedBox(width: 16.w),
                                const Expanded(
                                    child:
                                        DefaultContaiiner(text: "last_Name")),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            const DefaultContaiiner(text: "national_ID"),
                            SizedBox(height: 20.w),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Expanded(
                                  child:
                                      DefaultContaiiner(text: "date_of_birth"),
                                ),
                                SizedBox(width: 16.w),
                                const Expanded(
                                  child: DefaultContaiiner(text: "gender"),
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
                              MaxLength: 11,
                              controller: phoneController,
                            ),
                            const SizedBox(height: 5.0),
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
