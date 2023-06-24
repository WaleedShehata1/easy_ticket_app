// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Pop_Up/visa.dart';
import '../widget/Buttom.dart';
import '../widget/dialog.dart';
import '../widget/text_Form_Field.dart';

class WalletProfile extends StatelessWidget {
  var walletController = TextEditingController();

  var PasswordController = TextEditingController();

  WalletProfile({super.key});
  static const String routeName = 'Wallet Profile';
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Column(children: [
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
                        size: 35.w,
                      ),
                    ),
                    SizedBox(
                      width: 100.w,
                    ),
                    Text(
                      'Wallet',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10).r,
                        color: const Color.fromARGB(255, 231, 230, 230),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '70 LE',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.sp),
                            ),
                            Text(
                              'رصيد',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.sp),
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Container(
                      padding: const EdgeInsets.all(15).w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15).r,
                        color: const Color.fromARGB(255, 231, 230, 230),
                      ),
                      child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            Text(
                              'charge details',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 22.sp),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(
                              height: 50.h,
                              child: DefaultFormField(
                                colorBorder: Colors.white,
                                radius: 15,
                                keyboardType: TextInputType.number,
                                controller: walletController,
                                label: "enter the amount",
                                validate: (String? value) {
                                  if (value!.trim().isEmpty) {
                                    return 'Enter the wallet recharge balance';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            DefaultButtom(
                              Child: Text(
                                'charge',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 22.sp,
                                    color: Colors.white),
                              ),
                              Height: 40,
                              Width: double.infinity,
                              PaddingHorizontal: 0,
                              PaddingVertical: 0,
                              OnTap: () {
                                if (formKey.currentState!.validate()) {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return DefaultDialog(
                                          Child: VisaScreen(
                                            isWallet: true,
                                            cost: double.parse(
                                                walletController.text),
                                          ),
                                        );
                                      });
                                }
                              },
                              radius: 15,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
