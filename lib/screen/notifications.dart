// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Pop_Up/ticket_modification.dart';
import '../widget/dialog.dart';

class NotificationsScreen extends StatelessWidget {
  static const String routeName = 'Notifications';

  DateTime date = DateTime.now();
  int RemainingTime = 15;
  int BusNumber = 200;

  NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Column(children: [
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              color: PrimaryColour,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    Text(
                      'Notifications',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 20.w, vertical: 10.h),
              physics: const ClampingScrollPhysics(),
              itemCount: 1,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: PrimaryColour,
                    borderRadius: BorderRadius.circular(15.0).r,
                  ),
                  child: ExpansionTile(
                    textColor: Colors.black,
                    tilePadding: EdgeInsets.symmetric(horizontal: 10.0.w),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            '${date.day}/ ${date.month}',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            '${date.hour}:${date.minute}',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Trip details',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow
                                .ellipsis, // set overflow to ellipsis
                            maxLines: 1, // set max lines to 1
                          ),
                        ),
                      ],
                    ),
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Text(
                          'باقي$RemainingTime دقيقة علي تحرك باص رقم $BusNumber من محطة البداية برجاء الانتظار في المحطه',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      /*  ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return DefaultDialog(
                                Child: const TicketModificationScreen(),
                              );
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20).r)),
                        child: Text(
                          'تعديل التذكرة؟',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp),
                        ),
                      ), */
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 10.0.h);
              },
            ),
          ),
        ]),
      ),
    );
  }
}
