class SignIn {
  bool? status;
  String? message;
  UserData? data;

  SignIn.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? UserData.fromJson(json['data']) : null;
  }
}

class UserData {
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
  String? image;

  // UserData({
  //   this.national_ID,
  //   required this.email,
  //   required this.phone,
  //   required this.first_Name,
  //   required this.last_Name,
  //   this.image,
  //   this.date_of_birth,
  //   this.profession,
  //   this.health_status,
  //   this.gender
  // });

  UserData.fromJson(Map<String, dynamic> json) {
    national_ID = json['uId'];
    email = json['email'];
    first_Name = json['first_Name'];
    last_Name = json['last_Name'];
    phone = json['phone'];
    image = json['image'];
    health_status = json['health_status'];
    date_of_birth = json['date_of_birth'];
    gender = json['gender'];
    profession = json['profession'];
  }

  // Map<String, dynamic> toFireStore() {
  //   return {
  //     'uId': uId,
  //     'email': email,
  //     'userName': userName,
  //     'phone': phone,
  //     'image': image,
  //   };
  // }
}
