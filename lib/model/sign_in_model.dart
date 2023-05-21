// ignore_for_file: unnecessary_this, non_constant_identifier_names

import 'package:easy_ticket_app/widget/components.dart';

class SignInModel {
  bool? status;
  String? message;
  String? token;
  UserData? data;

  SignInModel.fromJson(Map<String, dynamic> json) {
    status = json['statu'];
    message = json['message'];
    token = json['access_token'];
    data = UserData.fromJson(json['user']);
  }
//  Map<String, dynamic> toJson() {
  //  final Map<String, dynamic> data = new Map<String, dynamic>();
  //  data['statu'] = this.status;
  //  data['message'] = this.message;
  //  if (this.data != null) {
  //    data['user'] = this.data?.toJson();
  //   }
  //   return data;
//  }//
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
  }
/* 
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.uid;
    data['national_ID'] = this.national_ID;
    data['first_Name'] = this.first_Name;
    data['last_Name'] = this.last_Name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['gender'] = this.gender;
    data['profession'] = this.profession;
    data['date_of_birth'] = this.date_of_birth;
    data['access_token'] = this.token;
    data['health_status'] = this.health_status;
    return data;
  }
} */
}
