// ignore_for_file: avoid_unnecessary_containers, library_private_types_in_public_api

import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Pop_Up/change_password.dart';

class EditProfileScreen extends StatefulWidget {
    static const String routeName = 'Edite profile';

  const EditProfileScreen({super.key});

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController nationalIdController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final TextEditingController professionController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController healthStatusController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  var ScaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: ScaffoldKey,
         body: Column(
          children: [
               Container(
                width: double.infinity,
                height: 80.h,
                decoration: BoxDecoration(
                  color: PrimaryColour,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)).r,
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
                          icon:  Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size:25.w,
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
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextField(
                            controller: firstNameController,
                            decoration: const InputDecoration(
                              labelText: 'First Name',
                            ),
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        Expanded(
                          child: TextField(
                            controller: lastNameController,
                            decoration: const InputDecoration(
                              labelText: 'Last Name',
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    TextField(
                      maxLength: 14,
                      keyboardType: TextInputType.number,
                      controller: nationalIdController,
                      decoration: const InputDecoration(
                        labelText: 'National ID',
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.datetime,
                            controller: birthDateController,
                            decoration: const InputDecoration(
                              labelText: 'Birth Date',
                            ),
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        Expanded(
                          child: TextField(
                            controller: professionController,
                            decoration: const InputDecoration(
                              labelText: 'Profession',
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    TextField(
                      keyboardType: TextInputType.phone,
                      controller: phoneController,
                      decoration: const InputDecoration(
                        labelText: 'Phone',
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextField(
                            controller: healthStatusController,
                            decoration: const InputDecoration(
                              labelText: 'Health Status',
                            ),
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        Expanded(
                          child: TextField(
                            controller: genderController,
                            decoration: const InputDecoration(
                              labelText: 'Gender',
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                      ),
                    ),
                     SizedBox(height: 15.h),
                   
                     DefaultButtom(
                      Child:Text('Change Password',style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w800
                      ),),
                       Height: 35.h,
                        Width: 150.w,
                         PaddingHorizontal: 10.w,
                          PaddingVertical: 10.h,
                          radius: 15.r,
                          OnTap:() {
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
                      Child:Text('Save Changes',style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w800
                      ),),
                       Height: 40.h,
                        Width: 200.w,
                         PaddingHorizontal: 10.w,
                          PaddingVertical: 10.h,
                          radius: 15.r,
                          OnTap: () {
                            
                          },
                          ),
                 
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
