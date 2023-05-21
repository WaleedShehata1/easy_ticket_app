// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore_for_file: camel_case_types, sort_child_properties_last

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/Buttom.dart';
import '../widget/components.dart';

class busTicketDetiles extends StatelessWidget {
  Function()? ontap;
  busTicketDetiles({
    Key? key,
    this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 115.h,
              width: 145.w,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))
                      .r,
                  color: Colors.grey.withOpacity(1),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 2),
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 0,
                        blurRadius: 2.r),
                  ]),
            ),
            SizedBox(
              width: 27.w,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10))
                      .r,
                  color: Colors.grey.withOpacity(1),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0.5, 2),
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 0,
                        blurRadius: 2.r),
                  ]),
              height: 115.h,
              width: 78.w,
            ),
          ],
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Bus 12",
                      style: TextStyle(
                          color: textColour,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 30.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              color: PrimaryColour,
                              borderRadius: BorderRadius.circular(10).r),
                          child: Icon(
                            Icons.near_me_outlined,
                            color: Colors.white,
                            size: 15.w,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Cairo",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 14.sp),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              "15-Dec-2022",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 13.sp),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.location_pin,
                            color: Colors.white,
                            size: 15.w,
                          ),
                          width: 30.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              color: PrimaryColour,
                              borderRadius: BorderRadius.circular(10).r),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Qena",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 14.sp),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              "15-Dec-2022",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 13.sp),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 25.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              width: 30.w,
                              height: 15.h,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20))
                                      .r),
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: 28.w,
                                  height: 14.5.h,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(50),
                                            bottomRight: Radius.circular(50))
                                        .r,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(1),
                                        spreadRadius: 0,
                                        blurRadius: 0.5.r,
                                        offset: const Offset(0,
                                            -0.1), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 28.w,
                                  height: 15.h,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(50),
                                            bottomRight: Radius.circular(50))
                                        .r,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white.withOpacity(1),
                                        spreadRadius: 1.r,
                                        blurRadius: 1.r,
                                        offset: const Offset(0, -1.5),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.h),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15.w,
                          ),
                          DottedBorder(
                              padding: const EdgeInsets.all(0),
                              dashPattern: const [5, 8],
                              child: SizedBox(
                                height: 78.h,
                              )),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              width: 30.w,
                              height: 14.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20))
                                    .r,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(1),
                                    spreadRadius: 0,
                                    blurRadius: 5.r,
                                    offset: const Offset(0, 1),
                                  ),
                                ],
                              ),
                            ),
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                  width: 28.w,
                                  height: 13.5.h,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(50),
                                            topRight: Radius.circular(50))
                                        .r,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(1),
                                        spreadRadius: 1.5.r,
                                        blurRadius: 1.r,
                                        offset: const Offset(0, -1),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 24.w,
                                  height: 15.h,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(50),
                                            topRight: Radius.circular(50))
                                        .r,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white.withOpacity(1),
                                        spreadRadius: 1.r,
                                        blurRadius: 1.r,
                                        offset: const Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '8:50 AM',
                      style: TextStyle(
                          height: 1,
                          color: textColour,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    DefaultButtom(
                      OnTap: ontap,
                      Child: Text(
                        'Buy Ticket',
                        style: TextStyle(
                          height: 0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                        ),
                      ),
                      Height: 30,
                      Width: 60,
                      PaddingHorizontal: 0,
                      PaddingVertical: 0,
                      radius: 10,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Price: ",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp),
                        ),
                        Text(
                          "\$70",
                          style: TextStyle(
                              color: PrimaryColour,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          width: 250.w,
          height: 115.h,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10).r),
        ),
      ],
    );
  }
}
