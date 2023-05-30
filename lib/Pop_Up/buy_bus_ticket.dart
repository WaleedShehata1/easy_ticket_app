// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable, sized_box_for_whitespace, avoid_print

import 'package:dotted_border/dotted_border.dart';
import 'package:easy_ticket_app/cubit/counter/counter_cubit.dart';
import 'package:flutter/material.dart';

import 'package:easy_ticket_app/Pop_Up/bus_details.dart';
import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../cubit/counter/counter_states.dart';
import '../screen/payment_method.dart';
import '../widget/Buttom.dart';
import '../widget/dialog.dart';

class BuyBusTicket extends StatelessWidget {
  late bool isBusTicket;
  Function()? ontapMinus;
  Function()? ontapAdd;
  int? numberTicket;

  int? ticket_number;

  String? type;

  String? number_of_stations;

  dynamic price;
  BuyBusTicket(
      {Key? key,
      required this.isBusTicket,
      this.ontapAdd,
      this.ontapMinus,
      required this.numberTicket,
      this.price,
      this.number_of_stations,
      this.ticket_number,
      this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) => {
          if (state is CounterIncrementState)
            {print('Counter + ${state.counter}')}
          else if (state is CounterDecrementState)
            {print('Counter - ${state.counter}')}
        },
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              isBusTicket
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return DefaultDialog(
                                        Child: DetailsbusTicket(
                                      numberTicket: numberTicket,
                                    ));
                                  });
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              size: 35.w,
                            )),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.close_outlined,
                              size: 35.w,
                            ))
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.close_outlined,
                              size: 35.w,
                            ))
                      ],
                    ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 10.h),
                child: Text(
                  isBusTicket ? 'Bus 12' : 'Ticket $ticket_number',
                  style: TextStyle(
                      color: textColour,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 30.w),
                child: isBusTicket
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 45.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                    color: PrimaryColour,
                                    borderRadius: BorderRadius.circular(13).r),
                                child: Icon(
                                  Icons.near_me_outlined,
                                  color: Colors.white,
                                  size: 25.w,
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
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Text(
                                    "15-Dec-2022",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 45.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                    color: PrimaryColour,
                                    borderRadius: BorderRadius.circular(13).r),
                                child: Text(
                                  'Now',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.sp),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'girls school',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                    color: PrimaryColour),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 45.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                    color: PrimaryColour,
                                    borderRadius: BorderRadius.circular(13).r),
                                child: Icon(
                                  Icons.location_pin,
                                  color: Colors.white,
                                  size: 25.w,
                                ),
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
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Text(
                                    "15-Dec-2022",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    : Container(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '$type',
                              style: TextStyle(
                                  color: PrimaryColour,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            const Text(
                              'number of stations',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsetsDirectional.all(3),
                              width: 70.w,
                              height: 45.h,
                              decoration: BoxDecoration(
                                  color: PrimaryColour,
                                  borderRadius: BorderRadius.circular(10).r),
                              child: Text(
                                '$number_of_stations',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: number_of_stations!.length > 3
                                        ? 17.sp
                                        : 24.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
              ),
              Center(
                child: DottedBorder(
                    color: Colors.grey,
                    padding: const EdgeInsets.all(0),
                    dashPattern: const [4, 8],
                    child: SizedBox(
                      width: 240.w,
                    )),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 25.w),
                child: Row(
                  mainAxisAlignment: isBusTicket
                      ? MainAxisAlignment.spaceBetween
                      : MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    isBusTicket
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '9:00 AM',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                    color: textColour),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Text(
                                '9:00 AM',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                    color: textColour),
                              ),
                            ],
                          )
                        : SizedBox(),
                    //
                    Row(
                      children: [
                        Text(
                          'Price: ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: Colors.grey),
                        ),
                        Text(
                          '\$${price != null ? (price! * numberTicket!) : 23}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: PrimaryColour),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DefaultButtom(
                    color: Colors.white,
                    Child: Container(
                      color: Colors.black,
                      width: 20.w,
                      height: 3.h,
                    ),
                    Height: 40,
                    radius: 13,
                    Width: 25,
                    PaddingHorizontal: 15,
                    PaddingVertical: 0,
                    OnTap: () {
                      CounterCubit.get(context).decrement();
                    },
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 55.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: PrimaryColour,
                        borderRadius: BorderRadius.circular(13).r),
                    child: Text(
                      "${CounterCubit.get(context).counter}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  DefaultButtom(
                    color: Colors.white,
                    Child: Center(
                        child: Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 30.w,
                    )),
                    Height: 40,
                    radius: 13,
                    Width: 30,
                    PaddingHorizontal: 15,
                    PaddingVertical: 0,
                    OnTap: () {
                      CounterCubit.get(context).increment();
                    },
                  )
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              DefaultButtom(
                  OnTap: () {
                    Navigator.pushNamed(context, PaymentMethodScreen.routeName);
                  },
                  Child: Text(
                    "Buy",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26.sp),
                  ),
                  Height: 40,
                  Width: 200,
                  radius: 15,
                  PaddingHorizontal: 40,
                  PaddingVertical: 5),
            ],
          );
        },
      ),
    );
  }
}
