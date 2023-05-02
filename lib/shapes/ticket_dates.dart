// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore_for_file: camel_case_types

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/components.dart';

class metroDate extends StatelessWidget {
  Function()? ontap;
  metroDate({
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
              height: 90.h,
              width: 167.w,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))
                      .w,
                  color: Colors.grey.withOpacity(1),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(-0.5, 3),
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 0,
                        blurRadius: 2),
                    BoxShadow(
                        offset: const Offset(0, -0.1),
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 0,
                        blurRadius: 2),
                  ]),
            ),
            SizedBox(
              width: 25.w,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10))
                      .w,
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
              height: 90.h,
              width: 77.w,
            ),
          ],
        ),
        Container(
          width: 270.w,
          height: 92.h,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10).r),
          child: Row(
            children: [
              Container(
                height: 92.h,
                width: 147.w,
                decoration: BoxDecoration(
                  color: PrimaryColour,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ).r,
                ),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'First Line',
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 32.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15.w,),
              Column(
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
                                borderRadius: BorderRadius.only(
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
                                      spreadRadius: 0.5.r,
                                      blurRadius: 0.5.r,
                                      offset: const Offset(0,
                                          0.1), // changes position of shadow
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
                  DottedBorder(
                      padding: const EdgeInsets.all(0),
                      dashPattern: const [5, 9],
                      child: SizedBox(
                        height: 60.h,
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
                                      spreadRadius: 0.5.r,
                                      blurRadius: 1.5.r,
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
                                      offset: const Offset(0, 3),
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
              DefaultButtom(
                OnTap: ontap,
                Child: Text(
                  'Show',
                  maxLines: 1,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      height: 1,
                      fontWeight: FontWeight.w900),
                ),
                Height: 15.h,
                Width: 30.w,
                radius: 5.r,
                PaddingHorizontal: 0,
                PaddingVertical: 0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
