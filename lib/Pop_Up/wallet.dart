// ignore_for_file: must_be_immutable

import 'package:easy_ticket_app/Pop_Up/wallet_message.dart';
import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/Buttom.dart';
import '../widget/dialog.dart';
import '../widget/text_Form_Field.dart';

class WalletScreen extends StatelessWidget {
  var passwordController = TextEditingController();

  WalletScreen({super.key});
  static const String routeName = 'Wallet ';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                    Icons.close,
                    size: 30.w,
                  ))
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            alignment: Alignment.center,
            width: double.infinity,
            height: 40.h,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              'Wallet',
              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total: ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
              ),
              Text(
                '\$80',
                style: TextStyle(
                  color: PrimaryColour,
                  fontSize: 20.sp,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 40.h,
            width: 250.w,
            child: DefaultFormField(
                controller: passwordController,
                label: 'Password',
                validate: (p0) {
                  return null;
                }),
          ),
          SizedBox(
            height: 50.h,
          ),
          DefaultButtom(
            Child: const Text('Pay with wallet'),
            Height: 40.h,
            Width: 220.w,
            PaddingHorizontal: 15.w,
            PaddingVertical: 10.h,
            radius: 15.r,
            OnTap: () {
              Navigator.pop(context);
              showDialog(
                  context: context,
                  builder: (context) {
                    return DefaultDialog(Child: const MessageWalletScreen());
                  });
            },
          )
        ],
      ),
    );
  }
}
