// ignore_for_file: must_be_immutable, avoid_print

import 'package:easy_ticket_app/cubit/app/app_cubit.dart';
import 'package:easy_ticket_app/screen/sign_in.dart';
import 'package:easy_ticket_app/widget/Buttom.dart';
import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../cubit/app/app_state.dart';
import 'change_passwword_login.dart';
import '../widget/constants.dart';
import '../widget/dialog.dart';
import '../widget/text_Form_Field.dart';

class OtpForm2 extends StatelessWidget {
  static const String routeName = 'otp 2 Screen';
  OtpForm2({super.key, required this.sendBy});
  String sendBy;
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
            if (state is sendOtpResetSuccessState) {
              if (state.getResponsReset!.status == true) {
                navigateAndFinish(context, ChangePasswordLoginScreen());
                print("Message==/${state.getResponsReset!.status}");
                navigateAndFinish(context, ChangePasswordLoginScreen());
                print("Message==  ${state.getResponsReset!.message}");
              } else if (state.getResponsReset!.status == false) {
                print("Message==  ${state.getResponsReset!.message}");
                print("Message==/${state.getResponsReset!.status}");
                showToast(
                    text: state.getResponsReset!.message!,
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
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, Sign_In.routeName);
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
                              padding: const EdgeInsetsDirectional.symmetric(
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
                                    'Reset Password',
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
                                        SizedBox(
                                          width: 250,
                                          child: DefaultFormField(
                                            fontSize: 20.sp,
                                            colorBorder:
                                                PrimaryColour.withOpacity(0.5),
                                            controller: otp,
                                            hint: "000000",
                                            validate: (String? value) {
                                              if (value!.trim().isEmpty) {
                                                return '!';
                                              }
                                              return null;
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
                                            'send',
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
                                                .sendOtpResetPassord(
                                              Email: sendBy,
                                              otpReset: otp.text,
                                            );
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
