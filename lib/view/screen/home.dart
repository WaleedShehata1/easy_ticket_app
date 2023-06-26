// ignore: implementation_imports

// ignore_for_file: prefer_final_fields, non_constant_identifier_names, unused_local_variable

import 'dart:ui';
import 'package:easy_ticket_app/cubit/app/app_cubit.dart';
import 'package:easy_ticket_app/cubit/theme/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:easy_ticket_app/view/Pop_Up/buy_bus_ticket.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../cubit/my_ticket/my_ticket_cubit.dart';
import '../Pop_Up/metro_date.dart';
import '../../cubit/app/app_state.dart';
import '../../cubit/metro/metro_cubit.dart';
import '../../model/metro.dart';
import '../shapes/ticket_bus.dart';
import '../shapes/ticket_dates.dart';
import '../shapes/ticket_metro.dart';
import '../../widget/Buttom.dart';
import '../../widget/components.dart';
import '../../widget/dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool selectBottom = true;
  int _numberTicket = 1;

  int? i = 5;
  late Widget list;
  late bool buyTicket;

  bool switshTicket = false;

  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of<ThemeCubit>(context, listen: false);
    MetroCubit metro = BlocProvider.of<MetroCubit>(context, listen: false);
    AppCubit bus = BlocProvider.of<AppCubit>(context, listen: false);
    MetroTicket? ticket_metro = metro.ticket;
    metroData? line_metro = metro.metroLine_station;
    metroAndTiming? time_metro = metro.metro_timing;
    BusTicket? bus_ticet = bus.bus;
    if (switshTicket == true) {
      i = ticket_metro!.ticket.length;
    } else if (switshTicket == false) {
      i = 2;
    }
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppCubit()
            ..getUserData()
            ..userModel,
        ),
        BlocProvider(
          create: (context) => MyTicketCubit()
            ..getMyTicketData()
            ..myTicket,
        ),
      ],
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
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
                      height: 120.h,
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
                    ? (ListView.separated(
                        itemCount: bus_ticet!.bus.length,
                        // itemCount: 10,
                        itemBuilder: (ctx, index) {
                          return busTicket(
                            busData: bus_ticet.bus[index],
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 20.h,
                          );
                        },
                      ))
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
                                    color: switshTicket
                                        ? Colors.white
                                        : Colors.black,
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
                                color:
                                    switshTicket ? PrimaryColour : Colors.white,
                                radius: 7,
                                PaddingHorizontal: 5,
                                PaddingVertical: 5,
                              ),
                              DefaultButtom(
                                Child: Text(
                                  'Date',
                                  style: TextStyle(
                                      color: switshTicket
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 18.sp),
                                ),
                                Height: 28,
                                Width: 40,
                                radius: 7,
                                color:
                                    switshTicket ? Colors.white : PrimaryColour,
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
                              itemCount: i ?? 1,
                              itemBuilder: (ctx, index) {
                                if (switshTicket == false) {
                                  if (index == 0) {
                                    // metro line
                                    return metroDate(
                                      metroData: line_metro!.Line_1,
                                      ontap: () {
                                        return showDialog(
                                            context: context,
                                            builder: (context) {
                                              return DefaultDialog(
                                                paddingHorizontal: 10.w,
                                                Child: MetroDateTicket(
                                                    metroData:
                                                        line_metro.Line_1),
                                              );
                                            });
                                      },
                                    );
                                  } else if (index == 1) {
                                    return metroDate(
                                      metroData: line_metro!.Line_2,
                                      ontap: () {
                                        return showDialog(
                                            context: context,
                                            builder: (context) {
                                              return DefaultDialog(
                                                paddingHorizontal: 10.w,
                                                Child: MetroDateTicket(
                                                  metroData: line_metro.Line_2,
                                                ),
                                              );
                                            });
                                      },
                                    );
                                  }
                                } else {
                                  //metro ticket
                                  return metroTicket(
                                    onTap: () {
                                      return showDialog(
                                          context: context,
                                          builder: (context) {
                                            return DefaultDialog(
                                                Child: BuyBusTicket(
                                              id: ticket_metro.ticket[index]
                                                  ['id'],
                                              id_ticket: ticket_metro
                                                  .ticket[index]['id'],
                                              priceBus:
                                                  ticket_metro.ticket[index]
                                                      ['ticket_price'],
                                              ticket_number: ticket_metro
                                                  .ticket[index]['id'],
                                              number_of_stations:
                                                  ticket_metro.ticket[index]
                                                      ['number_of_stations'],
                                              type: ticket_metro.ticket[index]
                                                  ['type'],
                                              numberTicket: _numberTicket,
                                              isBusTicket: false,
                                            ));
                                          });
                                    },
                                    price: ticket_metro!.ticket[index]
                                        ['ticket_price'],
                                    ticket_number: ticket_metro.ticket[index]
                                        ['id'],
                                    number_of_stations: ticket_metro
                                        .ticket[index]['number_of_stations'],
                                    type: ticket_metro.ticket[index]['type'],
                                  );
                                }
                                return null;
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
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
        },
      ),
    );
  }
}
