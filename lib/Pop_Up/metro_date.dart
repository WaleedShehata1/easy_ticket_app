// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../cubit/metro/metro_cubit.dart';
import '../model/metro.dart';
import '../shapes/ticket_metro_date.dart';

class MetroDateTicket extends StatelessWidget {
  metroLine? metroData;
  MetroDateTicket({
    super.key,
    this.metroData,
  });

  @override
  Widget build(BuildContext context) {
    MetroCubit metro = BlocProvider.of<MetroCubit>(context, listen: false);
    metroAndTiming? time_metro = metro.metro_timing;
    return Column(
      children: [
        Row(
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
        Expanded(
          child: ListView.separated(
            itemCount: time_metro!.metro.length,
            itemBuilder: (ctx, index) {
              if (metroData!.id == 1) {
                return dateMetroTicket(
                  time: time_metro.metro[index]['metro_timing'][0]
                      ['start_time'],
                  idMetro: time_metro.metro[index]['metro_timing'][0]
                      ['metro_id'],
                  startStation: time_metro.metro[index]['metro_timing'][0]
                              ['directione'] ==
                          'true'
                      ? metroData!.starting_station
                      : metroData!.end_station,
                  nowStation: time_metro.metro[index]['metro_timing'][0]
                              ['directione'] ==
                          'false'
                      ? metroData!.end_station
                      : metroData!.starting_station,
                  endStation: time_metro.metro[index]['metro_timing'][0]
                              ['directione'] ==
                          'true'
                      ? metroData!.end_station
                      : metroData!.starting_station,
                  waitting: time_metro.metro[index]['metro_timing'][0]
                      ['waiting'],
                );
              } else if (metroData!.id == 2) {
                return dateMetroTicket(
                  time: time_metro.metro[index]['metro_timing'][0]
                      ['start_time'],
                  idMetro: ((time_metro.metro[index]['metro_timing'][0]
                          ['metro_id']) +
                      12),
                  startStation: time_metro.metro[index]['metro_timing'][0]
                              ['directione'] ==
                          'true'
                      ? metroData!.starting_station
                      : metroData!.end_station,
                  nowStation: time_metro.metro[index]['metro_timing'][0]
                              ['directione'] ==
                          'false'
                      ? metroData!.end_station
                      : metroData!.starting_station,
                  endStation: time_metro.metro[index]['metro_timing'][0]
                              ['directione'] ==
                          'true'
                      ? metroData!.end_station
                      : metroData!.starting_station,
                  waitting: time_metro.metro[index]['metro_timing'][0]
                      ['waiting'],
                );
              }
              return null;
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 10.h,
              );
            },
          ),
        ),
      ],
    );
  }
}
