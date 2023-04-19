// ignore_for_file: prefer_typing_uninitialized_variables, avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';

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
    return Container(
      color: const Color(0xffF48265),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(style: BorderStyle.solid))),
            child: const Text(
              'Ticket Modification',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
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
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                      width: 2, color: Colors.white),
                                ),
                              ),
                              hint: const Text('Select options'),
                              value: _selectedValue,
                              borderRadius: BorderRadius.circular(10),
                              items: options
                                  .map<DropdownMenuItem<String>>((option) {
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
                              iconSize: 30,
                              icon: const Icon(Icons.arrow_drop_down),
                              dropdownColor: Colors.white,
                              elevation: 5,
                            );
                          } else {
                            return const Text('No data available');
                          }
                        } else {
                          return const CircularProgressIndicator();
                        }
                      },
                    )),
              ),
              const SizedBox(width: 25.0),
              const Text(
                ':معاد الباص',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 150,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const Text(
                    'Data',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              const Text(
                ':خط السير',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  width: 150,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const Text(
                    'Data',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              const Text(
                ':رقم الباص',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 32.0),
          Container(
            child: SizedBox(
              width: 100.0,
              height: 30.0,
              child: ElevatedButton(
                onPressed: () {
                  print('Saved!');
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23.0),
                    ),
                    backgroundColor: Colors.white),
                child: const Text('Save',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
