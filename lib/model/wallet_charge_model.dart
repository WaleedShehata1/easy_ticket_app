// ignore_for_file: camel_case_types, prefer_if_null_operators

class walletModel {
  String? message;
  bool? status;
  dynamic wallet;
  walletModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    wallet = json['wallet'] != null ? json['wallet'] : 0;
  }
}
