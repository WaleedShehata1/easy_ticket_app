import 'package:easy_ticket_app/widget/Buttom.dart';
import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/dialog.dart';
import 'QR.dart';

class MessageWalletScreen extends StatelessWidget {
  const MessageWalletScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  showDialog(
                      context: context,
                      builder: (context) {
                        return DefaultDialog(Child: const GetQR());
                      });
                },
                icon: Icon(
                  Icons.close,
                  size: 35.w,
                ))
          ],
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(50)),
          child: Icon(
            Icons.close,
            size: 70.w,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 30.h,
          width: double.infinity,
        ),
        Text(
          'Insufficient balance',
          style: TextStyle(
              color: Colors.black,
              fontSize: 28.sp,
              fontWeight: FontWeight.bold),
        ),
        Container(
          alignment: Alignment.center,
          width: 220,
          child: Text(
            'Do you want to advance the rest and pay upon shipment?',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: PrimaryColour,
                fontSize: 26.sp,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DefaultButtom(
                Child: const Text(
                  'Yes',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
                radius: 15,
                OnTap: () {},
                Height: 40,
                Width: 50,
                PaddingHorizontal: 0,
                PaddingVertical: 0),
            DefaultButtom(
                Child: const Text(
                  'No',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
                Height: 40,
                radius: 15,
                OnTap: () {},
                Width: 50,
                PaddingHorizontal: 0,
                PaddingVertical: 0),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
      ],
    );
  }
}
