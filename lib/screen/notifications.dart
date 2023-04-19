import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  DateTime date = DateTime.now();
  int RemainingTime = 15;
  int BusNumber = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF48265),
        title: const Text('Notifications'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10.0),
        physics: ClampingScrollPhysics(),
        itemCount: 1,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Color(0xffF48265),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ExpansionTile(
              textColor: Colors.black,
              tilePadding: EdgeInsets.symmetric(horizontal: 10.0),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      '${date.day}/ ${date.month}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      '${date.hour}:${date.minute}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Trip details',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow:
                          TextOverflow.ellipsis, // set overflow to ellipsis
                      maxLines: 1, // set max lines to 1
                    ),
                  ),
                ],
              ),
              subtitle: Text(
                'باقي$RemainingTime دقيقة علي وصول باص رقم $BusNumber الي المحطة المختارة برجاء الانتظار في المحطه',
                style: TextStyle(fontSize: 16.0),
              ),
              children: [
                ElevatedButton(
                  onPressed: () {
                    //  TODO: Implementaion
                  },
                  child: Text(
                    'هل تريد تعديل التذكرة؟',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 10.0);
        },
      ),
    );
  }
}
