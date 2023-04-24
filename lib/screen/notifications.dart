// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';
import '../Pop_Up/ticket_modification.dart';

class NotificationsScreen extends StatelessWidget {
    static const String routeName = 'Notifications';

  DateTime date = DateTime.now();
  int RemainingTime = 15;
  int BusNumber = 200;

  NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: PrimaryColour,
        title: const Text('Notifications'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(10.0),
        physics: const ClampingScrollPhysics(),
        itemCount: 1,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: PrimaryColour,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ExpansionTile(
              textColor: Colors.black,
              tilePadding: const EdgeInsets.symmetric(horizontal: 10.0),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      '${date.day}/ ${date.month}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      '${date.hour}:${date.minute}',
                      style: const TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
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
                      overflow:
                          TextOverflow.ellipsis, // set overflow to ellipsis
                      maxLines: 1, // set max lines to 1
                    ),
                  ),
                ],
              ),
              children: [
                Text(
                'باقي$RemainingTime دقيقة علي وصول باص رقم $BusNumber الي المحطة المختارة برجاء الانتظار في المحطه',
                style: const TextStyle(fontSize: 16.0),
              ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const Dialog(
                          child: TicketModificationScreen(),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text(
                    'تعديل التذكرة؟',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 10.0);
        },
      ),
    );
  }
}
