// ignore_for_file: non_constant_identifier_names, avoid_init_to_null

class SignInModel {
  bool? status;
  String? message;
  String? token;
  UserData? data;

  SignInModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    token = json['token'];
    data = json['data'] != null ? UserData.fromJson(json['data']) : null;
  }
}

class UserData {
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
  String? password;
  String? email_verified_at;
  UserData.fromJson(Map<String, dynamic> json) {
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
    email_verified_at = json['email_verified_at'];
  }
}

class User {
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
  String? email_verified_at;
  User(
      {this.uid,
      this.first_Name,
      this.last_Name,
      this.national_ID,
      this.phone,
      this.email,
      this.email_verified_at = null,
      this.date_of_birth,
      this.gender,
      this.health_status,
      this.profession});
}
