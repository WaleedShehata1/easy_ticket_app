import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/dialog.dart';
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
                icon:  Icon(
                  Icons.close,
                  size: 35.w,
                ))
          ],
        ),
         Icon(
          Icons.done,
          size: 70.w,
          color: Colors.black,
        ),
         SizedBox(
          height: 30.h,
          width: double.infinity,
        ),
        Text(
          'Done',
          style: TextStyle(
              color: Colors.black, fontSize: 32.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20.h,
        )
      ],
    );
  }
}
