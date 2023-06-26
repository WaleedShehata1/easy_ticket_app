// ignore_for_file: prefer_typing_uninitialized_variables, avoid_unnecessary_containers, avoid_print

import 'package:easy_ticket_app/widget/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/Buttom.dart';

class TicketModificationScreen extends StatefulWidget {
  const TicketModificationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TicketModificationScreenState createState() =>
      _TicketModificationScreenState();
}

class _TicketModificationScreenState extends State<TicketModificationScreen> {
  var _selectedValue;

// Future<List<String>> fetchData() async {
//   final response = await http.get(Uri.parse(''));
//   final List<dynamic> data = json.decode(response.body);
//   return data.map<String>((item) => item['option']).toList();
// }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
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
        Container(
          decoration: const BoxDecoration(
              // border: Border(bottom: BorderSide(style: BorderStyle.solid))
              ),
          child: Text(
            'Ticket Modification',
            style: TextStyle(
                fontSize: 20.0.sp,
                fontWeight: FontWeight.bold,
                color: PrimaryColour),
          ),
        ),
        SizedBox(
          height: 20.0.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                  height: 40.h,
                  width: 0.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0).r,
                    color: Colors.white,
                    border: Border.all(color: PrimaryColour),
                  ),
                  child: FutureBuilder<List<String>>(
                    // future: fetchData(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        if (snapshot.hasData) {
                          final options = snapshot.data!;
                          return DropdownButtonFormField(
                            decoration: InputDecoration(
                              enabled: false,
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20).r,
                                borderSide: const BorderSide(
                                    width: 2, color: Colors.white),
                              ),
                            ),
                            hint: const Text('Select options'),
                            value: _selectedValue,
                            borderRadius: BorderRadius.circular(10).r,
                            items:
                                options.map<DropdownMenuItem<String>>((option) {
                              return DropdownMenuItem(
                                value: option,
                                child: Text(option),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                _selectedValue = value;
                              });
                            },
                            isExpanded: true,
                            iconSize: 30.w,
                            icon: const Icon(Icons.arrow_drop_down),
                            dropdownColor: Colors.white,
                            elevation: 5,
                          );
                        } else {
                          return const Text('No data available');
                        }
                      } else {
                        return Center(
                          child: SizedBox(
                              width: 30.w,
                              height: 30.h,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: PrimaryColour,
                              )),
                        );
                      }
                    },
                  )),
            ),
            SizedBox(width: 10.0.w),
            Text(
              'Bus schedule:',
              style: TextStyle(
                fontSize: 16.0.sp,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
        SizedBox(height: 16.0.h),
        Row(
          children: [
            Expanded(
              child: Container(
                width: 150.w,
                height: 30.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0).r,
                  color: Colors.white,
                  border: Border.all(color: PrimaryColour),
                ),
                child: Text(
                  'Data',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      height: 1.5),
                ),
              ),
            ),
            SizedBox(width: 15.0.w),
            Text(
              'Bus line:',
              style: TextStyle(
                fontSize: 16.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 16.0.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: 150.w,
                height: 30.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0).r,
                  color: Colors.white,
                  border: Border.all(color: PrimaryColour),
                ),
                child: Text(
                  'Data',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      height: 1.5),
                ),
              ),
            ),
            SizedBox(width: 10.0.w),
            Text(
              'Bus no.:',
              style: TextStyle(
                fontSize: 16.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 32.0),
        DefaultButtom(
          Child: Text('Save',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0.sp,
                  fontWeight: FontWeight.bold)),
          Height: 30,
          Width: 100,
          radius: 15,
          PaddingHorizontal: 10,
          PaddingVertical: 5,
          OnTap: () {
            print('Saved!');
          },
        )
      ],
    );
  }
}
