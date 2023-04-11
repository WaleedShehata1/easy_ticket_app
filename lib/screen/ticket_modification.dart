import 'package:flutter/material.dart';

class TicketModificationScreen extends StatefulWidget {
  @override
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
      color: Color(0xffF48265),
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(style: BorderStyle.solid))),
            child: Text(
              'Ticket Modification',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
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
                                  borderSide:
                                      BorderSide(width: 2, color: Colors.white),
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
              SizedBox(width: 25.0),
              Text(
                ':معاد الباص',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
          SizedBox(height: 16.0),
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
                  child: Text(
                    'Data',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(width: 10.0),
              Text(
                ':خط السير',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0),
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
                  child: Text(
                    'Data',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(width: 10.0),
              Text(
                ':رقم الباص',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 32.0),
          Container(
            child: SizedBox(
              width: 100.0,
              height: 30.0,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: implement Save functionality
                  print('Saved!');
                },
                child: Text('Save',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold)),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23.0),
                    ),
                    backgroundColor: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
