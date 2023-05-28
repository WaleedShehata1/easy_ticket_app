class walletModel {
  String? message;
  bool? status;
  double? wallet;
  walletModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    wallet = json['wallet'] != null ? json['wallet'] : null;
  }
}
