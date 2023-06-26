// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types, non_constant_identifier_names, avoid_print

class MetroTicket {
  List<Map<String, dynamic>> ticket = [];

  MetroTicket.fromJson(Map<String, dynamic> json) {
    var itemList = json["ticket"] as List;
    ticket = itemList.map((e) => Map<String, dynamic>.from(e)).toList();
  }
}

class BusTicket {
  List<Map<String, dynamic>> bus = [];

  BusTicket.fromJson(Map<String, dynamic> json) {
    var itemList = json["bus"] as List;
    bus = itemList.map((e) => Map<String, dynamic>.from(e)).toList();
  }
}
///////////////////////////////////////////////////////////////

class metroData {
  metroLine? Line_1;
  metroLine? Line_2;
  metroData.fromJson(Map<String, dynamic> json) {
    Line_1 = metroLine.fromJson(json['first_line']);
    Line_2 = metroLine.fromJson(json['second_line']);
  }
}

class metroLine {
  int? id;
  String? line_number;
  String? starting_station;
  String? end_station;
  int? number_of_stations;
  List<Map<String, dynamic>> stations = [];
  metroLine.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    line_number = json["line_number"];
    starting_station = json["starting_station"];
    end_station = json["end_station"];
    number_of_stations = json["number_of_stations"];
    var itemList = json["stations"] as List;
    stations = itemList.map((e) => Map<String, dynamic>.from(e)).toList();
    json["stations"].forEach((element) {
      stations.add(element);
    });
  }
}

class stationsModel {
  int? id;
  int? station_number;
  String? station_name;
  String? lat;
  String? long;
  pivot? relationship;
  stationsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    station_number = json['station_number'];
    station_name = json['station_name'];
    lat = json['lat'];
    long = json['long'];
    pivot.fromJson(json['pivot']);
  }
}

class pivot {
  int? metro_line_id;
  int? station_id;
  pivot.fromJson(Map<String, dynamic> json) {
    metro_line_id = json['metro_line_id'];
    station_id = json['station_id'];
  }
}

////////////////////////////////////////////////////////////////////////////////

class metroAndTiming {
  List<Map<String, dynamic>> metro = [];

  metroAndTiming.fromJson(Map<String, dynamic> json) {
    var itemList = json["metroTiming"] as List;
    metro = itemList.map((e) => Map<String, dynamic>.from(e)).toList();
  }
}

class metroModel {
  int? id;
  int? metro_number;
  String? lat;
  String? long;
  int? metro_line_id;
  List<Map<String, dynamic>> metro_timing = [];
  metroModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    metro_number = json['metro_number'];
    lat = json['lat'];
    long = json['long'];
    metro_line_id = json['metro_line_id'];
    var itemList = json["metro_timing"] as List;
    metro_timing = itemList.map((e) => Map<String, dynamic>.from(e)).toList();
  }
}

class metroTiming {
  int? id;
  String? start_time;
  String? end_time;
  String? waiting;
  String? directione;
  int? metro_id;
  metroTiming.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    start_time = json['start_time'];
    end_time = json['end_time'];
    waiting = json['waiting'];
    directione = json['directione'];
    metro_id = json['metro_id'];
  }
}
