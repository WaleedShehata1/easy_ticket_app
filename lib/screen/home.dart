// ignore: implementation_imports

import 'dart:ui';
import 'package:easy_ticket_app/cubit/theme/theme_cubit.dart';
import 'package:easy_ticket_app/widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:easy_ticket_app/Pop_Up/bus_details.dart';
import 'package:easy_ticket_app/Pop_Up/buy_bus_ticket.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Pop_Up/metro_date.dart';
import '../shapes/ticket_bus.dart';
import '../shapes/ticket_dates.dart';
import '../shapes/ticket_metro.dart';
import '../widget/Buttom.dart';
import '../widget/components.dart';
import '../widget/dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool selectBottom = true;
  int _numberTicket = 0;
  int i = 10;
  late Widget list;
  late bool buyTicket;

  bool switshTicket = false;

  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of<ThemeCubit>(context, listen: false);
    return Scaffold(
      backgroundColor: theme.isDark ? DarkColour : Colors.white,
      body: Column(children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "asset/images/unsplash_nG3q_mlv8yI.png",
                fit: BoxFit.cover,
                width: double.infinity,
                height: 145.h,
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
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Easy Ticket",
                    style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  DefaultButtom(
                    alignment: Alignment.centerLeft,
                    Child: Text(
                      'Where do you want to go ?',
                      style: TextStyle(
                          fontSize: 16.sp,
                          wordSpacing: 1,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Height: 30,
                    Width: 270,
                    PaddingHorizontal: 20,
                    PaddingVertical: 10,
                    radius: 10,
                    OnTap: () {
                      //  Navigator.pushNamed(context,Map2Screen.route);
                    },
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
              Height: 40,
              Width: 40,
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
              Height: 40,
              Width: 40,
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
                  itemCount: 10,
                  itemBuilder: (ctx, index) {
                    return busTicket(
                      ontap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return DefaultDialog(
                                paddingHorizontal: 15,
                                Child: DetilesbusTicket(
                                  numberTicket: _numberTicket,
                                  ontapAdd: () {
                                    setState(() {
                                      _numberTicket++;
                                    });
                                  },
                                  ontapMinus: () {
                                    setState(() {
                                      if (_numberTicket > 0) {
                                        _numberTicket = _numberTicket - 1;
                                      }
                                    });
                                  },
                                ));
                          },
                        );
                      },
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 20.h,
                    );
                  },
                )
              : Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DefaultButtom(
                          Child: Transform.rotate(
                            origin: const Offset(-2, -1),
                            angle: -44.75,
                            child: Icon(
                              Icons.confirmation_num_outlined,
                              color: switshTicket ? Colors.white : Colors.black,
                              size: 23.w,
                            ),
                          ),
                          Height: 28,
                          Width: 40,
                          OnTap: () {
                            setState(() {
                              switshTicket = true;
                            });
                          },
                          color: switshTicket ? PrimaryColour : Colors.white,
                          radius: 7,
                          PaddingHorizontal: 5,
                          PaddingVertical: 5,
                        ),
                        DefaultButtom(
                          Child: Text(
                            'Schedules',
                            style: TextStyle(
                                color:
                                    switshTicket ? Colors.black : Colors.white,
                                fontSize: 18.sp),
                          ),
                          Height: 28,
                          Width: 40,
                          radius: 7,
                          color: switshTicket ? Colors.white : PrimaryColour,
                          OnTap: () {
                            setState(() {
                              switshTicket = false;
                            });
                          },
                          PaddingHorizontal: 5,
                          PaddingVertical: 5,
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView.separated(
                        itemCount: 10,
                        itemBuilder: (ctx, index) {
                          if (switshTicket == false) {
                            return metroDate(
                              ontap: () {
                                return showDialog(
                                    context: context,
                                    builder: (context) {
                                      return DefaultDialog(
                                        paddingHorizontal: 10.w,
                                        Child: const MetroDateTicket(),
                                      );
                                    });
                              },
                            );
                          } else {
                            return metroTicket(
                              onTap: () {
                                return showDialog(
                                    context: context,
                                    builder: (context) {
                                      return DefaultDialog(
                                          Child: BuyBusTicket(
                                        ontapAdd: () {
                                          setState(() {
                                            _numberTicket++;
                                          });
                                        },
                                        ontapMinus: () {
                                          setState(() {
                                            if (_numberTicket > 0) {
                                              _numberTicket--;
                                            }
                                          });
                                        },
                                        numberTicket: _numberTicket,
                                        isBusTicket: false,
                                      ));
                                    });
                              },
                            );
                          }
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 20.h,
                          );
                        },
                      ),
                    ),
                  ],
                ),
        )
      ]),
    );
  }
}
