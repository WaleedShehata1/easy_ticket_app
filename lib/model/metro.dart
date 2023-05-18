// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types

class metroData {
  final String id;
  final String title;

  metroData({required this.id, required this.title});
}

class metroDetiles {
  final String id;
  final String dateTime;
  final String startStation;
  final String nowStation;
  final String endStation;
  final String waitting;
  const metroDetiles({
    required this.id,
    required this.dateTime,
    required this.startStation,
    required this.nowStation,
    required this.endStation,
    required this.waitting,
  });
}


class metroTicket {
  final String id;
  final String numberOfStations;
  final int price;
  const metroTicket({
    required this.id,
    required this.numberOfStations,
    required this.price,
  });
}
