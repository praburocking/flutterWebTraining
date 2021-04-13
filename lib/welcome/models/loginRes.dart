// To parse this JSON data, do
//
//     final loginRes = loginResFromJson(jsonString);

import 'dart:convert';

LoginRes loginResFromJson(String str) => LoginRes.fromJson(json.decode(str));

String loginResToJson(LoginRes data) => json.encode(data.toJson());

class LoginRes {
  LoginRes({
    this.user,
    this.license,
  });

  User user;
  dynamic license;

  factory LoginRes.fromJson(Map<String, dynamic> json) => LoginRes(
        user: User.fromJson(json["user"]),
        license: json["license"],
      );

  Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "license": license,
      };
}

class User {
  User({
    this.id,
    this.username,
    this.email,
    this.verified,
    this.createdTime,
    this.active,
  });

  String id;
  String username;
  String email;
  String verified;
  DateTime createdTime;
  bool active;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        verified: json["verified"],
        createdTime: DateTime.parse(json["created_time"]),
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "verified": verified,
        "created_time": createdTime.toIso8601String(),
        "active": active,
      };
}
