// To parse this JSON data, do
//
//     final loginReq = loginReqFromJson(jsonString);

import 'dart:convert';

LoginReq loginReqFromJson(String str) => LoginReq.fromJson(json.decode(str));

String loginReqToJson(LoginReq data) => json.encode(data.toJson());

class LoginReq {
  LoginReq({
    this.email,
    this.password,
  });

  String email;
  String password;

  factory LoginReq.fromJson(Map<String, dynamic> json) => LoginReq(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
