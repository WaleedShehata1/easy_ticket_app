// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class showTicketModel {
  List<Transaction> data = [];

  showTicketModel.fromJson(Map<String, dynamic> json) {
    var itemList = json["data"];

    data = itemList.map((e) {
      return Transaction(
        id: e["id"],
        value_price: e["value_price"],
        bus_id: e["bus_id"],
        date_of_use: e["date_of_use"],
        ticket_id: e["ticket_id"],
        Entry_station: e["Entry_station"],
        Exit_station: e["Exit_station"],
        Date_of_entry: e["Date_of_entry"],
        time_of_Entry: e["time_of_Entry"],
        tickets_status: e["tickets_status"],
        time_of_out: e["time_of_out"],
      );
    });
  }
}

class Transaction {
  int id;
  String? Date_of_entry;
  String? time_of_Entry;
  String? time_of_out;
  String? Entry_station;
  String? Exit_station;
  int value_price;
  String? tickets_status;
  String? date_of_use;
  String? ticket_id;
  int bus_id;
  Transaction({
    required this.id,
    this.Date_of_entry,
    this.time_of_Entry,
    this.time_of_out,
    this.Entry_station,
    this.Exit_station,
    required this.value_price,
    this.tickets_status,
    this.date_of_use,
    this.ticket_id,
    required this.bus_id,
  });

  Transaction copyWith({
    int? id,
    String? Date_of_entry,
    String? time_of_Entry,
    String? time_of_out,
    String? Entry_station,
    String? Exit_station,
    int? value_price,
    String? tickets_status,
    String? date_of_use,
    String? ticket_id,
    int? bus_id,
  }) {
    return Transaction(
      id: id ?? this.id,
      Date_of_entry: Date_of_entry ?? this.Date_of_entry,
      time_of_Entry: time_of_Entry ?? this.time_of_Entry,
      time_of_out: time_of_out ?? this.time_of_out,
      Entry_station: Entry_station ?? this.Entry_station,
      Exit_station: Exit_station ?? this.Exit_station,
      value_price: value_price ?? this.value_price,
      tickets_status: tickets_status ?? this.tickets_status,
      date_of_use: date_of_use ?? this.date_of_use,
      ticket_id: ticket_id ?? this.ticket_id,
      bus_id: bus_id ?? this.bus_id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'Date_of_entry': Date_of_entry,
      'time_of_Entry': time_of_Entry,
      'time_of_out': time_of_out,
      'Entry_station': Entry_station,
      'Exit_station': Exit_station,
      'value_price': value_price,
      'tickets_status': tickets_status,
      'date_of_use': date_of_use,
      'ticket_id': ticket_id,
      'bus_id': bus_id,
    };
  }

  factory Transaction.fromMap(Map<String, dynamic> map) {
    return Transaction(
      id: (map["id"] ?? 0) as int,
      Date_of_entry: map['Date_of_entry'] != null
          ? map["Date_of_entry"] ?? '' as String
          : null,
      time_of_Entry: map['time_of_Entry'] != null
          ? map["time_of_Entry"] ?? '' as String
          : null,
      time_of_out: map['time_of_out'] != null
          ? map["time_of_out"] ?? '' as String
          : null,
      Entry_station: map['Entry_station'] != null
          ? map["Entry_station"] ?? '' as String
          : null,
      Exit_station: map['Exit_station'] != null
          ? map["Exit_station"] ?? '' as String
          : null,
      value_price: (map["value_price"] ?? 0) as int,
      tickets_status: map['tickets_status'] != null
          ? map["tickets_status"] ?? '' as String
          : null,
      date_of_use: map['date_of_use'] != null
          ? map["date_of_use"] ?? '' as String
          : null,
      ticket_id:
          map['ticket_id'] != null ? map["ticket_id"] ?? '' as String : null,
      bus_id: (map["bus_id"] ?? 0) as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Transaction.fromJson(String source) =>
      Transaction.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Transaction(id: $id, Date_of_entry: $Date_of_entry, time_of_Entry: $time_of_Entry, time_of_out: $time_of_out, Entry_station: $Entry_station, Exit_station: $Exit_station, value_price: $value_price, tickets_status: $tickets_status, date_of_use: $date_of_use, ticket_id: $ticket_id, bus_id: $bus_id)';
  }

  @override
  bool operator ==(covariant Transaction other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.Date_of_entry == Date_of_entry &&
        other.time_of_Entry == time_of_Entry &&
        other.time_of_out == time_of_out &&
        other.Entry_station == Entry_station &&
        other.Exit_station == Exit_station &&
        other.value_price == value_price &&
        other.tickets_status == tickets_status &&
        other.date_of_use == date_of_use &&
        other.ticket_id == ticket_id &&
        other.bus_id == bus_id;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        Date_of_entry.hashCode ^
        time_of_Entry.hashCode ^
        time_of_out.hashCode ^
        Entry_station.hashCode ^
        Exit_station.hashCode ^
        value_price.hashCode ^
        tickets_status.hashCode ^
        date_of_use.hashCode ^
        ticket_id.hashCode ^
        bus_id.hashCode;
  }
}
