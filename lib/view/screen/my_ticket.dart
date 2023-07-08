// ignore_for_file: camel_case_types

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Pop_Up/QR.dart';
import '../Pop_Up/delete.dart';
import '../../cubit/my_ticket/my_ticket_cubit.dart';
import '../../cubit/theme/theme_cubit.dart';
import '../shapes/my_ticket_bus.dart';
import '../shapes/my_ticket_metro.dart';
import '../../widget/Buttom.dart';
import '../../widget/components.dart';
import '../../widget/dialog.dart';

class myTicket extends StatefulWidget {
  const myTicket({super.key});
  @override
  State<myTicket> createState() => _myTicketState();
}

class _myTicketState extends State<myTicket> {
  bool selectBottom = true;
  int i = 1;
  late Widget list;
  late bool buyTicket;

  bool switshTicket = false;
  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of<ThemeCubit>(context, listen: false);
    return BlocProvider(
      create: (context) => MyTicketCubit()
        ..getMyTicketData()
        ..myTicket,
      child: BlocConsumer<MyTicketCubit, MyTicketState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: theme.isDark ? DarkColour : Colors.white,
            body: Column(children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))
                    .r,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      "asset/images/unsplash_nG3q_mlv8yI.png",
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 95.h,
                    ),
                    Positioned.fill(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                        child: Container(
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          "My Ticket",
                          style: TextStyle(
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DefaultButtom(
                    Child: Icon(
                      Icons.directions_train_sharp,
                      color: selectBottom ? Colors.black : Colors.white,
                      size: 30.w,
                    ),
                    Height: 38,
                    Width: 35,
                    radius: 10,
                    PaddingHorizontal: 0,
                    PaddingVertical: 10,
                    OnTap: () {
                      setState(() {
                        selectBottom = false;
                      });
                    },
                    color: selectBottom ? Colors.white : PrimaryColour,
                  ),
                  DefaultButtom(
                    Child: Icon(
                      Icons.directions_bus_filled_rounded,
                      color: selectBottom ? Colors.white : Colors.black,
                      size: 30.w,
                    ),
                    Height: 38,
                    Width: 35,
                    radius: 10,
                    PaddingHorizontal: 0,
                    PaddingVertical: 10,
                    color: selectBottom ? PrimaryColour : Colors.white,
                    OnTap: () {
                      setState(() {
                        selectBottom = true;
                      });
                    },
                  ),
                ],
              ),
              Expanded(
                child: list = selectBottom
                    ? ListView.separated(
                        itemCount: i,
                        itemBuilder: (ctx, index) {
                          return myTicketBus(
                            onTapDelete: () {
                              return showDialog(
                                  context: context,
                                  builder: (context) {
                                    return DefaultDialog(Child: DeleteScreen());
                                  });
                            },
                            onTapQR: () {
                              return showDialog(
                                  context: context,
                                  builder: (context) {
                                    return DefaultDialog(
                                      Child: const GetQR(),
                                    );
                                  });
                            },
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 20.h,
                          );
                        },
                      )
                    : ListView.separated(
                        itemCount: i,
                        itemBuilder: (ctx, index) {
                          return myTicketMetro(
                            onTapDelete: () {
                              return showDialog(
                                  context: context,
                                  builder: (context) {
                                    return DefaultDialog(Child: DeleteScreen());
                                  });
                            },
                            onTapQR: () {
                              return showDialog(
                                  context: context,
                                  builder: (context) {
                                    return DefaultDialog(
                                        Child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
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
                                        const Icon(
                                          Icons.qr_code_2_outlined,
                                          size: 200,
                                        ),
                                      ],
                                    ));
                                  });
                            },
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 20.h,
                          );
                        },
                      ),
              )
            ]),
          );
        },
      ),
    );
  }
}
