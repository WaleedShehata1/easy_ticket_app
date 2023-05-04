// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore_for_file: camel_case_types

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../cubit/theme/theme_cubit.dart';
import '../widget/components.dart';

class myTicketBus extends StatelessWidget {
  Function()? onTap;
    Function()? onTapDelete;
  Function()? onTapEdit;
  Function()? onTapQR;
   myTicketBus({
    Key? key,
    this.onTap,
    this.onTapDelete,
    this.onTapEdit,
    this.onTapQR,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        ThemeCubit theme = BlocProvider.of<ThemeCubit>(context,listen: false);

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 50.w),
      child: Container(
        
        padding: const EdgeInsets.all(10).w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15).r,
          color: Colors.white,
         boxShadow: [
            BoxShadow(
                    offset: const Offset(0, 0),
                     color:theme.isDark?Colors.white.withOpacity(0.3): Colors.grey.withOpacity(0.3),
                      spreadRadius: 1.r,
                       blurRadius: 2.r,
                    ),
         ]
        ),
        child: Column(
          children: [
            Stack(
      alignment: Alignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120.h,
              width: 136.w,
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
              width: 24.w,
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
              width: 78.w,
            ),
          ],
        ),
        Container(
          width: 270.w,
          height: 122.h,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10).r),
          child:Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5.w),
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
                          size: 20.w,
                        ),
                      ),
                       SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text(
                            "Cairo",
                            style: TextStyle(color: Colors.black, fontSize: 14.sp),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            "15-Dec-2022",
                            style: TextStyle(color: Colors.grey, fontSize: 13.sp),
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
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            color: PrimaryColour,
                            borderRadius: BorderRadius.circular(10).r),
                        child:  Icon(
                          Icons.location_pin,
                          color: Colors.white,
                          size: 20.w,
                        ),
                      ),
                       SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text(
                            "Qena",
                            style: TextStyle(color: Colors.black, fontSize: 14.sp),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            "15-Dec-2022",
                            style: TextStyle(color: Colors.grey, fontSize: 13.sp),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 15.w,
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
                        decoration:  BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
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
                                  spreadRadius: 0.5.r,
                                  blurRadius: 0.5.r,
                                  offset: const Offset(
                                      0, -0.5), // changes position of shadow
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
                                  offset: const Offset(0, -3),
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
                 padding:   EdgeInsets.symmetric(vertical: 3.h),
                 child: Row(
                   children: [
                     SizedBox(
                      width: 15.w,
                    ),
                     DottedBorder(
                        padding: const EdgeInsets.all(0),
                        dashPattern: const [5, 8],
                        child:   SizedBox(
                          height: 86.h,
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
                                  spreadRadius: 1.r,
                                  blurRadius: 1.r,
                                  offset: const Offset(0, -1),
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
                                  topRight: Radius.circular(50)).r,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(1),
                                  spreadRadius: 1.r,
                                  blurRadius: 1.r,
                                  offset: const Offset(0,4),
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
                          '10:10 AM',
                          style: TextStyle(
                              color: textColour,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp),
                        ),
                         SizedBox(height: 10.h,),
                  DefaultButtom(
                    OnTap: onTap,
                    Child:  Text(
                      'Tracking',
                      style: TextStyle(
                          height: 1.2,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp),
                    ),
                    Height: 25,
                    Width: 55,
                    PaddingHorizontal: 0,
                    PaddingVertical: 0,
                    radius: 7,
                  ),
                   SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                     Text(
                        "Price: ",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold,
                            fontSize: 14.sp),
                      ),
                      Text(
                        "\$70",
                        style: TextStyle(
                            color: PrimaryColour, fontWeight: FontWeight.bold,fontSize: 14.sp),
                      ),
                    ],
                  )
                ],
              ),
            ],
                  ),
          ),
        ),
       
      ],
    ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DefaultButtom(color: Colors.white,
                    Child:  Icon(Icons.delete_outlined,color: Colors.black,size: 30.w,),
                    OnTap: onTapDelete,
                radius: 10,           
                   Height: 40,
                    Width: 30,
                    PaddingHorizontal: 0,
                    PaddingVertical: 15,),
                DefaultButtom( color: Colors.white,
                  Child:  Icon(Icons.edit,color: Colors.black,size: 30.w,),
                 radius: 10,           
                   Height: 40,
                    Width: 30,
                    PaddingHorizontal: 0,
                    PaddingVertical: 15,
                    OnTap:onTapEdit,),
                DefaultButtom(OnTap: onTapQR,color: Colors.white,
                   Child:  Icon(Icons.qr_code_2_rounded,color: Colors.black,size: 30.w,),
                  radius: 10,           
                   Height: 40,
                    Width: 30,
                    PaddingHorizontal: 0,
                    PaddingVertical: 15,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
