// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultContaiiner extends StatelessWidget {
  final String text;
  const DefaultContaiiner({
    Key? key,
    required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      padding:
          EdgeInsetsDirectional.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15).r,
          border: Border.all(width: 2.w, color: Colors.grey.withOpacity(0.8))),
      child: Text(
        text,
        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
      ),
    );
  }
}
