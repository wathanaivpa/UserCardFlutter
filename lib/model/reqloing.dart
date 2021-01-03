// To parse this JSON data, do
//
//     final reqlogin = reqloginFromJson(jsonString);

import 'dart:convert';

Reqlogin reqloginFromJson(String str) => Reqlogin.fromJson(json.decode(str));

String reqloginToJson(Reqlogin data) => json.encode(data.toJson());

class Reqlogin {
  Reqlogin({
    this.email,
    this.password,
  });

  String email;
  String password;

  factory Reqlogin.fromJson(Map<String, dynamic> json) => Reqlogin(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
