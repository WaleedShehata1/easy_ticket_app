// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shapes/ticket_bus_details.dart';
import '../widget/dialog.dart';
import 'buy_bus_ticket.dart';

class DetailsbusTicket extends StatelessWidget {
  static const String routeName = 'Details bus Ticket';
  int? lineNumber;

  DetailsbusTicket({
    Key? key,
    this.lineNumber,
  }) : super(key: key);

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
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: busTicketDetails(
                  ontap: () {
                    Navigator.pop(context);
                    showDialog(
                        context: context,
                        builder: (ctx) {
                          return DefaultDialog(
                            Child: BuyBusTicket(
                              numberTicket: lineNumber,
                              isBusTicket: true,
                            ),
                          );
                        });
                  },
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 5.h,
              );
            },
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
      ],
    );
  }
}
