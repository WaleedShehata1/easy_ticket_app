// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/components.dart';

class dateMetroTicket extends StatelessWidget {
  const dateMetroTicket({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 10.h,bottom: 10.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120.h,
                width: 170.w,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)).r,
                    color: Colors.grey.withOpacity(1),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(-0.5, 3),
                          color: Colors.grey.withOpacity(1),
                          spreadRadius: 0,
                          blurRadius: 2.r),
                      BoxShadow(
                          offset: const Offset(0, -0.1),
                          color: Colors.grey.withOpacity(1),
                          spreadRadius: 0,
                          blurRadius: 2.r),
                    ]),
              ),
               SizedBox(
                width: 26.w,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)).r,
                    color: Colors.grey.withOpacity(1),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0.5, 3),
                          color: Colors.grey.withOpacity(1),
                          spreadRadius: 0,
                          blurRadius: 2.r),
                      BoxShadow(
                          offset: const Offset(0, -0.1),
                          color: Colors.grey.withOpacity(1),
                          spreadRadius: 0,
                          blurRadius: 2.r),
                    ]),
                height: 120.h,
                width: 59.w,
              ),
            ],
          ),
          Container(
            width: 257.w,
            height: 120.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10).r,
            ),
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                           EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.h),
                      height: 120.h,
                      width: 167.w,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ).r,
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin:  const EdgeInsets.only(right: 10).w,
                                  width: 35.w,
                                  height: 25.h,
                                  decoration: BoxDecoration(
                                    color: PrimaryColour,
                                    borderRadius: BorderRadius.circular(10).r,
                                  ),
                                  child:  Icon(
                                    Icons.near_me_outlined,color: Colors.white,
                                    size: 20.w,
                                  ),
                                ),
                                Text(
                                  'Elshuhada',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp),
                                )
                              ],
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 17.w),
                              child: DottedBorder(
                                  padding: const EdgeInsets.all(0),
                                  dashPattern: const [2, 2],
                                  child:  SizedBox(
                                    height: 10.h,
                                  )),
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(right: 10.w),
                                  width: 35.w,
                                  height: 25.h,
                                  decoration: BoxDecoration(
                                    color: PrimaryColour,
                                    borderRadius: BorderRadius.circular(10).r,
                                  ),
                                  child:  Text('Now',style: TextStyle(color: Colors.white,
                                  fontWeight:FontWeight.bold,
                                  fontSize: 16.sp),),
                                ),
                                Text(
                                  'girls school',
                                  style: TextStyle(
                                    color: PrimaryColour,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp),
                                )
                              ],
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 17.w),
                              child: DottedBorder(
                                  padding: const EdgeInsets.all(0),
                                  dashPattern: const [2, 2],
                                  child: SizedBox(
                                    height: 10.h,
                                  )),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 10.w),
                                  width: 35.w,
                                  height: 25.h,
                                  decoration: BoxDecoration(
                                    color: PrimaryColour,
                                    borderRadius: BorderRadius.circular(10).r,
                                  ),
                                  child:  Icon(
                          Icons.location_pin,
                          color: Colors.white,
                          size: 20.w,
                        ),
                                ),
                                 Text(
                                  'Adly Mansour',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp),
                                )
                              ],
                            ),
                             Padding(
                              padding: EdgeInsets.only(left: 17.w),
                              child: Text('waiting : one minute',
                              style: TextStyle(color: Colors.black54,
                              fontWeight: FontWeight.bold,fontSize: 12.sp),),
                            )
                          ]),
                    ),
                    Column(
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
                                  decoration:  BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20)).r),
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
                                            bottomRight: Radius.circular(50)).r,
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
                                            bottomRight: Radius.circular(50)).r,
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
                        DottedBorder(
                          color: Colors.grey,
                            padding: const EdgeInsets.all(0),
                            dashPattern: const [8, 9],
                            child:  SizedBox(
                              height: 90.h,
                            )),
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
                                        topRight: Radius.circular(20)).r,
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
                                            topRight: Radius.circular(50)).r,
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
                                            topRight: Radius.circular(50)).r,
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
                    Container(
                      margin:  EdgeInsets.only(left: 2.w),
                      height: 125.h,
                      width: 58.w,
                      decoration: BoxDecoration(
                          color: PrimaryColour,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)).r),
                              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                children:  [
                                  SizedBox(height: 10.h,),
                                  Text('Metro',
                                  style:TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold,fontSize: 20.sp) ,),
                                   SizedBox(height: 10.h,),
                                  Text('1258',style:TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold,fontSize: 18.sp) ,),
                                  SizedBox(height: 15.h,),
                                  Text('9:55pm',style:TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold,fontSize: 16.sp) ,),
                                 SizedBox(height:15.h,),
                                ]
                                ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
