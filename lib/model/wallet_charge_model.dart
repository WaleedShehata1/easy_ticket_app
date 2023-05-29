class walletModel {
  String? message;
  bool? status;
  dynamic wallet;
  walletModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    wallet = json['wallet'] != null ? json['wallet'] : null;
  }
}
