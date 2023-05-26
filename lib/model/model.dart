class getData {
  bool? status;
  String? message;

  getData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
  }
}
