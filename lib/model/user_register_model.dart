// ignore_for_file: non_constant_identifier_names

class RegisterModel {
  bool? status;
  String? message;
  UserCreate? data;

  RegisterModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];

    data = json['data'] != null ? UserCreate.fromJson(json['data']) : null;
  }
}

class UserCreate {
  String? uid;
  String? first_Name;
  String? last_Name;
  String? national_ID;
  String? gender;
  String? health_status;
  String? date_of_birth;
  String? email;
  String? profession;
  String? phone;

  UserCreate.fromJson(Map<String, dynamic> json) {
    uid = json['id'].toString();
    national_ID = json['national_ID'].toString();
    email = json['email'];
    first_Name = json['first_Name'];
    last_Name = json['last_Name'];
    phone = json['phone'];
    health_status = json['health_status'];
    date_of_birth = json['date_of_birth'];
    gender = json['gender'];
    profession = json['profession'];
  }
}
