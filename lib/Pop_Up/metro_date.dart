import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shapes/ticket_metro_date.dart';

class MetroDateTicket extends StatelessWidget {
  const MetroDateTicket({super.key});

  @override
  Widget build(BuildContext context) {
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
            itemCount: 10,
            itemBuilder: (ctx, index) {
              return const dateMetroTicket();
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
