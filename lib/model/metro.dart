// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types

import 'package:flutter/material.dart';

class metroTicket {
  List<ticketModel> ticket = [];

  metroTicket.fromJson(Map<String, dynamic> json) {
    json['ticket'].forEach((element) {
      print(element);
      ticket.add(element);
    });
  }
}

class ticketModel {
  int? id;
  int? ticketModel_number;
  String? number_of_stations;
  dynamic? ticket_price;
  String? type;
  ticketModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    ticketModel_number = json["ticket_number"];
    number_of_stations = json["number_of_stations"];
    ticket_price = json["ticket_price"];
    type = json["type"];
  }
}

///////////////////////////////////////////////////////////////

class metroData {
  metroLine? firstLine;
  metroLine? secondLine;
  metroData.fromJson(Map<String, dynamic> json) {
    firstLine = metroLine.fromJson(json['first_line']);
    secondLine = metroLine.fromJson(json['second_line']);
  }
}

class metroLine {
  int? id;
  String? line_number;
  String? starting_station;
  String? end_station;
  int? number_of_stations;
  List<stationsModel> stations = [];
  metroLine.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    line_number = json["line_number"];
    starting_station = json["starting_station"];
    end_station = json["end_station"];
    number_of_stations = json["number_of_stations"];
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
  List<metroModel> metro = [];

  metroAndTiming.fromJson(Map<String, dynamic> json) {
    json['ticket'].forEach((element) {
      print(element);
      metro.add(element);
    });
  }
}

class metroModel {
  int? id;
  int? metro_number;
  String? lat;
  String? long;
  int? metro_line_id;
  List<metroTiming> metro_timing = [];
  metroModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    metro_number = json['metro_number'];
    lat = json['lat'] != null ? json['lat'] : null;
    long = json['long'] != null ? json['long'] : null;
    metro_line_id = json['metro_line_id'];
    json['metro_timing'].forEach((element) {
      print(element);
      metro_timing.add(element);
    });
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
