// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names, must_be_immutable, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/components.dart';

class Enter4Digit extends StatelessWidget {
  var Digit = TextEditingController();
  Function()? onTap;
  String? Function(String?) Validate;

  Enter4Digit({
    Key? key,
    this.onTap,
    required this.Validate,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
                  icon:  Icon(
                    Icons.close_outlined,
                    size: 35.w,
                  ))
            ],
          ),
           SizedBox(
            height: 10.h,
          ),
          Text(
            'Enter the 4-digit code',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 30.h,
          ),
          DefaultFormField(
            controller: Digit,
            label: null,
            validate: Validate,
            MaxLength: 4,
            keyboardType: TextInputType.number,
          ),
           SizedBox(
            height: 40.h,
          ),
          DefaultButtom(
              Child:  Text(
                "Enter",
                style: TextStyle(fontSize: 24.sp),
              ),
              Height: 50,
              Width: 150,
              PaddingHorizontal: 0,
              PaddingVertical: 0,
              OnTap: onTap,
              radius: 15,),
           SizedBox(
            height: 20.h,
          )
        ],
      ),
    );
  }
}
