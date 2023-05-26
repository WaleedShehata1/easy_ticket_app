// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names, must_be_immutable, sized_box_for_whitespace, avoid_print
import 'package:easy_ticket_app/cubit/app/cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/Buttom.dart';
import '../widget/constants.dart';
import '../widget/text_Form_Field.dart';

class Enter6Digit extends StatelessWidget {
  var Digit = TextEditingController();
  String sendBy;
  Enter6Digit({
    Key? key,
    required this.sendBy,
  }) : super(key: key);
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Container(
            width: double.infinity,
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.close_outlined,
                            size: 35.w,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Enter the 6-digit code',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  DefaultFormField(
                    textAlign: TextAlign.center,
                    fontSize: 18.sp,
                    controller: Digit,
                    label: null,
                    validate: (value) {
                      if (value!.trim().isEmpty) {
                        return 'please enter for 6 Digit';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(6),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  DefaultButtom(
                    Child: Text(
                      "Enter",
                      style: TextStyle(fontSize: 24.sp),
                    ),
                    Height: 50,
                    Width: 150,
                    PaddingHorizontal: 0,
                    PaddingVertical: 0,
                    OnTap: () {
                      if (formKey.currentState!.validate()) {
                        AppCubit.get(context).sendOtpResetPassord(
                            Email: sendBy, otpReset: Digit.text);
                        if (state is sendOtpResetSuccessState) {
                          if (state.getResponsReset!.status == true) {
                            showToast(
                                text: state.getResponsReset!.message!,
                                state: ToastStates.success);
                            // Navigator.pop(context);
                          } else if (state.getResponsReset!.status == false) {
                            print(state.getResponsReset);
                            print(state.getResponsReset!.message);
                            showToast(
                                text: state.getResponsReset!.message!,
                                state: ToastStates.error);
                          } else {
                            showToast(
                                text:
                                    'There is a problem connecting to the server or the Internet',
                                state: ToastStates.warning);
                          }
                        }
                      }
                    },
                    radius: 15,
                  ),
                  SizedBox(
                    height: 20.h,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
