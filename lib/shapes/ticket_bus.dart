// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable, unused_local_variable, non_constant_identifier_names, no_leading_underscores_for_local_identifiers
// ignore_for_file: camel_case_types, sort_child_properties_last

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Pop_Up/bus_details.dart';
import '../cubit/theme/theme_cubit.dart';
import '../widget/Buttom.dart';
import '../widget/components.dart';
import '../widget/dialog.dart';

class busTicket extends StatelessWidget {
  Map<String, dynamic>? busData;
  busTicket({
    Key? key,
    this.busData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of<ThemeCubit>(context, listen: false);
    int? inex_start = (busData!['starting_station']).toString().length;
    int? inex_end = (busData!['end_station']).toString().length;
    int _numberTicket = 1;

    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120.h,
              width: 145.w,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))
                      .r,
                  color: Colors.grey.withOpacity(1),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(-0.5, 3),
                        color: theme.isDark
                            ? DarkColour.withOpacity(1)
                            : Colors.grey.withOpacity(1),
                        spreadRadius: 0.5.r,
                        blurRadius: 2.r),
                    BoxShadow(
                        offset: const Offset(0, -0.1),
                        color: theme.isDark
                            ? DarkColour.withOpacity(1)
                            : Colors.grey.withOpacity(1),
                        spreadRadius: 0.5.r,
                        blurRadius: 2.r),
                  ]),
            ),
            SizedBox(
              width: 28.w,
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
                        color: theme.isDark
                            ? DarkColour.withOpacity(1)
                            : Colors.grey.withOpacity(1),
                        spreadRadius: 0.5.r,
                        blurRadius: 2.r),
                    BoxShadow(
                        offset: const Offset(0, -0.1),
                        color: theme.isDark
                            ? DarkColour.withOpacity(1)
                            : Colors.grey.withOpacity(1),
                        spreadRadius: 0.5.r,
                        blurRadius: 2.r),
                  ]),
              height: 120.h,
              width: 95.w,
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
                    Column(
                      children: [
                        Text(
                          "${busData!['bus_number']}",
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
                              child: const Icon(
                                Icons.near_me_outlined,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 90,
                                  child: Text(
                                    "${busData!['starting_station']}",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 15.w,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Container(
                          child: const Icon(
                            Icons.location_pin,
                            color: Colors.white,
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
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              width: 90,
                              child: Text(
                                "${busData!['end_station']}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
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
                                  width: 29.w,
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
                                        offset: const Offset(0, -2),
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
                      padding: const EdgeInsets.symmetric(vertical: 3),
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
                                  height: 14.5.h,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(50),
                                            topRight: Radius.circular(50))
                                        .r,
                                    boxShadow: [
                                      BoxShadow(
                                        color: theme.isDark
                                            ? DarkColour.withOpacity(1)
                                            : Colors.grey.withOpacity(1),
                                        spreadRadius: 1.r,
                                        blurRadius: 1.r,
                                        offset: const Offset(0, 0),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 26.w,
                                  height: 15.h,
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
                                        spreadRadius: 0.5.r,
                                        blurRadius: 0.5.r,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DefaultButtom(
                      OnTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return DefaultDialog(
                                paddingHorizontal: 15,
                                Child: DetailsbusTicket(
                                  busData: busData,
                                  lineNumber: _numberTicket,
                                ));
                          },
                        );
                      },
                      Child: Text(
                        'Details',
                        style: TextStyle(
                            height: 1.4,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp),
                      ),
                      Height: 30,
                      Width: 75,
                      PaddingHorizontal: 0,
                      PaddingVertical: 0,
                      radius: 10,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Price: ",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp),
                        ),
                        Text(
                          "\$${busData?["Ticket_price"]}",
                          style: TextStyle(
                              color: PrimaryColour,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          width: 270.w,
          height: 122.h,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10).r),
        ),
      ],
    );
  }
}
