// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore_for_file: camel_case_types

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../cubit/theme/theme_cubit.dart';

import '../../model/metro.dart';
import '../../widget/Buttom.dart';
import '../../widget/components.dart';

class metroDate extends StatelessWidget {
  Function()? ontap;
  metroLine? metroData;

  metroDate({
    Key? key,
    this.ontap,
    this.metroData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of<ThemeCubit>(context, listen: false);
    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 90.h,
              width: 165.w,
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
                        blurRadius: 2.r),
                    BoxShadow(
                        offset: const Offset(0, -0.1),
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 0,
                        blurRadius: 2.r),
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
                      .r,
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
              width: 79.w,
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
                    '${metroData!.line_number}',
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 32.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
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
                                color: theme.isDark
                                    ? DarkColour.withOpacity(1)
                                    : Colors.white.withOpacity(1),
                                borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(50),
                                        bottomRight: Radius.circular(50))
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
                                      color: theme.isDark
                                          ? DarkColour.withOpacity(1)
                                          : Colors.grey.withOpacity(1),
                                      spreadRadius: 0.5.r,
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
                                      color: theme.isDark
                                          ? DarkColour.withOpacity(1)
                                          : Colors.white.withOpacity(1),
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
                            height: 15.h,
                            decoration: BoxDecoration(
                              color: theme.isDark
                                  ? DarkColour.withOpacity(1)
                                  : Colors.white.withOpacity(1),
                              borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      topRight: Radius.circular(50))
                                  .r,
                              boxShadow: [
                                BoxShadow(
                                  color: theme.isDark
                                      ? DarkColour.withOpacity(1)
                                      : Colors.white.withOpacity(1),
                                  spreadRadius: 0,
                                  blurRadius: 2.r,
                                  offset: const Offset(0, 0),
                                ),
                              ],
                            ),
                          ),
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                width: 28.w,
                                height: 14.5.h,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(50),
                                          topRight: Radius.circular(50))
                                      .r,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(1),
                                      spreadRadius: 1.r,
                                      blurRadius: 1.r,
                                      offset: const Offset(0, 0),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 27.w,
                                height: 15.5.h,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(50),
                                          topRight: Radius.circular(50))
                                      .r,
                                  boxShadow: [
                                    BoxShadow(
                                      color: theme.isDark
                                          ? DarkColour.withOpacity(1)
                                          : Colors.white.withOpacity(1),
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
                      fontSize: 18.sp,
                      height: 1.2,
                      fontWeight: FontWeight.w900),
                ),
                Height: 30,
                Width: 45,
                radius: 10,
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
