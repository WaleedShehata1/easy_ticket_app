
// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types




class busTicket {
  final String id;
  final String busNumber;
  final String startStation;
   final String endStation;
  final int price;
  const busTicket({
    required this.id,
    required this.busNumber,
    required this.startStation,
    required this.endStation,
    required this.price,
  });
}


class busDetiles {
  final String id;
  final String busNumber;
  final String dateTime;
  final String endDateTime;
  final String startStation;
  final String nowStation;
  final String endStation;
  final int price;


  const busDetiles({
    required this.id,
    required this.busNumber,
    required this.dateTime,
    required this.endDateTime,
    required this.startStation,
    required this.nowStation,
    required this.endStation,
    required this.price,
  });
}




