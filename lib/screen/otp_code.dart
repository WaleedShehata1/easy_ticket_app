// ignore_for_file: must_be_immutable

import 'package:easy_ticket_app/cubit/app/cubit/app_cubit.dart';
import 'package:easy_ticket_app/widget/Buttom.dart';
import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/sign_in_model.dart';
import '../widget/constants.dart';
import '../widget/text_Form_Field.dart';
import 'bottom_bar.dart';

class OtpForm extends StatelessWidget {
  static const String routeName = 'otp Screen';
  OtpForm({super.key});
  var otp = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: BlocProvider(
        create: (context) => AppCubit(),
        child: BlocConsumer<AppCubit, AppState>(
          listener: (context, state) {
            if (state is AppSuccessState) {
              if (state.getResponsEmailVerrification!.status == true) {
                print(
                    "Message==/${state.getResponsEmailVerrification!.message}");
                User? userData = CacheHelper.getData(key: 'userData');
                userData?.email_verified_at = 'done';
                CacheHelper.saveData(key: 'userData', value: userData)
                    .then((value) {
                  navigateAndFinish(
                    context,
                    const BottomBar(),
                  );
                  showToast(
                      text: state.getResponsEmailVerrification!.message!,
                      state: ToastStates.success);
                });
              } else if (state.getResponsEmailVerrification!.status == false) {
                print(
                    "Message==  ${state.getResponsEmailVerrification!.message}");
                showToast(
                    text: state.getResponsEmailVerrification!.message!,
                    state: ToastStates.error);
              }
            } else if (state is AppErrorState) {
              showToast(
                  text:
                      'There is a problem connecting to the server or the Internet',
                  state: ToastStates.warning);
            }
          },
          builder: (context, state) {
            return Scaffold(
              body: SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.black,
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsetsDirectional.symmetric(
                                  horizontal: 20),
                              height:
                                  (MediaQuery.of(context).size.height * 0.75),
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 200,
                                    height: 150,
                                    padding: const EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey.shade200),
                                    child: Transform.rotate(
                                      angle: 38,
                                      child: const Image(
                                          image: AssetImage(
                                              "asset/images/email.png")),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  const Text(
                                    'Verification',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Text(
                                    'Please enter the 6 digit code sent to \n ',
                                    style: TextStyle(),
                                  ),
                                  Form(
                                    key: key,
                                    child: Column(
                                      children: [
                                        /* Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            //1
                                            SizedBox(
                                              width: 50.w,
                                              height: 68.h,
                                              child: DefaultFormField(
                                                colorBorder:
                                                    PrimaryColour.withOpacity(
                                                        0.5),
                                                controller: otp1,
                                                hint: "0",
                                                validate: (String? value) {
                                                  /*  if (value!.trim().isEmpty) {
                                                    return '!';
                                                  }
                                                  return null; */
                                                },
                                                onChanged: (valu) {
                                                  if (valu.length == 1) {
                                                    FocusScope.of(context)
                                                        .nextFocus();
                                                  }
                                                },
                                                onSaved: (p0) {},
                                                keyboardType:
                                                    TextInputType.number,
                                                textAlign: TextAlign.center,
                                                inputFormatters: [
                                                  LengthLimitingTextInputFormatter(
                                                      1),
                                                  FilteringTextInputFormatter
                                                      .digitsOnly,
                                                ],
                                              ),
                                            ),
                                            //2
                                            SizedBox(
                                              width: 50.w,
                                              height: 68.h,
                                              child: DefaultFormField(
                                                colorBorder:
                                                    PrimaryColour.withOpacity(
                                                        0.5),
                                                controller: otp2,
                                                hint: "0",
                                                validate: (String? value) {
                                                  /*  if (value!.trim().isEmpty) {
                                                    return '!';
                                                  }
                                                  return null; */
                                                },
                                                onChanged: (valu) {
                                                  if (valu.length == 1) {
                                                    FocusScope.of(context)
                                                        .nextFocus();
                                                  }
                                                },
                                                onSaved: (p0) {},
                                                keyboardType:
                                                    TextInputType.number,
                                                textAlign: TextAlign.center,
                                                inputFormatters: [
                                                  LengthLimitingTextInputFormatter(
                                                      1),
                                                  FilteringTextInputFormatter
                                                      .digitsOnly,
                                                ],
                                              ),
                                            ),
                                            //3
                                            SizedBox(
                                              width: 50.w,
                                              height: 68.h,
                                              child: DefaultFormField(
                                                colorBorder:
                                                    PrimaryColour.withOpacity(
                                                        0.5),
                                                controller: otp3,
                                                hint: "0",
                                                validate: (String? value) {
                                                  /* if (value!.trim().isEmpty) {
                                                    return '!';
                                                  }
                                                  return null; */
                                                },
                                                onChanged: (valu) {
                                                  if (valu.length == 1) {
                                                    FocusScope.of(context)
                                                        .nextFocus();
                                                  }
                                                },
                                                onSaved: (p0) {},
                                                keyboardType:
                                                    TextInputType.number,
                                                textAlign: TextAlign.center,
                                                inputFormatters: [
                                                  LengthLimitingTextInputFormatter(
                                                      1),
                                                  FilteringTextInputFormatter
                                                      .digitsOnly,
                                                ],
                                              ),
                                            ),
                                            //4
                                            SizedBox(
                                              width: 50.w,
                                              height: 68.h,
                                              child: DefaultFormField(
                                                colorBorder:
                                                    PrimaryColour.withOpacity(
                                                        0.5),
                                                controller: otp4,
                                                hint: "0",
                                                validate: (String? value) {
                                                  /*  if (value!.trim().isEmpty) {
                                                    return '!';
                                                  }
                                                  return null; */
                                                },
                                                onChanged: (valu) {
                                                  if (valu.length == 1) {
                                                    FocusScope.of(context)
                                                        .nextFocus();
                                                  }
                                                },
                                                onSaved: (p0) {},
                                                keyboardType:
                                                    TextInputType.number,
                                                textAlign: TextAlign.center,
                                                inputFormatters: [
                                                  LengthLimitingTextInputFormatter(
                                                      1),
                                                  FilteringTextInputFormatter
                                                      .digitsOnly,
                                                ],
                                              ),
                                            ),
                                            //5
                                            SizedBox(
                                              width: 50.w,
                                              height: 68.h,
                                              child: DefaultFormField(
                                                colorBorder:
                                                    PrimaryColour.withOpacity(
                                                        0.5),
                                                controller: otp5,
                                                hint: "0",
                                                validate: (String? value) {
                                                  /*  if (value!.trim().isEmpty) {
                                                    return '!';
                                                  }
                                                  return null; */
                                                },
                                                onChanged: (valu) {
                                                  if (valu.length == 1) {
                                                    FocusScope.of(context)
                                                        .nextFocus();
                                                  }
                                                },
                                                onSaved: (p0) {},
                                                keyboardType:
                                                    TextInputType.number,
                                                textAlign: TextAlign.center,
                                                inputFormatters: [
                                                  LengthLimitingTextInputFormatter(
                                                      1),
                                                  FilteringTextInputFormatter
                                                      .digitsOnly,
                                                ],
                                              ),
                                            ),
                                            //6
                                            SizedBox(
                                              width: 50.w,
                                              height: 68.h,
                                              child: DefaultFormField(
                                                colorBorder:
                                                    PrimaryColour.withOpacity(
                                                        0.5),
                                                controller: otp6,
                                                hint: "0",
                                                validate: (String? value) {
                                                  /*   if (value!.trim().isEmpty) {
                                                    return '!';
                                                  }
                                                  return null; */
                                                },
                                                onChanged: (valu) {
                                                  if (valu.length == 1) {
                                                    FocusScope.of(context)
                                                        .unfocus();
                                                  }
                                                },
                                                onSaved: (p0) {},
                                                keyboardType:
                                                    TextInputType.number,
                                                textAlign: TextAlign.center,
                                                inputFormatters: [
                                                  LengthLimitingTextInputFormatter(
                                                      1),
                                                  FilteringTextInputFormatter
                                                      .digitsOnly,
                                                ],
                                              ),
                                            ),
                                          ],
                                        ), */

                                        SizedBox(
                                          width: 250,
                                          child: DefaultFormField(
                                            colorBorder:
                                                PrimaryColour.withOpacity(0.5),
                                            controller: otp,
                                            hint: "000000",
                                            validate: (String? value) {
                                              /*  if (value!.trim().isEmpty) {
                                                      return '!';
                                                    }
                                                    return null; */
                                            },
                                            onSaved: (p0) {
                                              print("onsave= $p0");
                                            },
                                            keyboardType: TextInputType.number,
                                            textAlign: TextAlign.center,
                                            inputFormatters: [
                                              LengthLimitingTextInputFormatter(
                                                  6),
                                              FilteringTextInputFormatter
                                                  .digitsOnly,
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 30.h,
                                        ),
                                        DefaultButtom(
                                          Child: Text(
                                            'Verify',
                                            style: TextStyle(
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Height: 40,
                                          PaddingHorizontal: 10,
                                          PaddingVertical: 10,
                                          Width: 100,
                                          radius: 15,
                                          OnTap: () {
                                            AppCubit.get(context)
                                                .getEmailVerification(
                                                    otp: otp.text);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
