// To parse this JSON data, do
//
//     final loginmodel = loginmodelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Loginmodel loginmodelFromJson(String str) =>
    Loginmodel.fromJson(json.decode(str));

String loginmodelToJson(Loginmodel data) => json.encode(data.toJson());

class Loginmodel {
  final int userId;
  final String email;
  final String hashedPassword;

  Loginmodel({
    required this.userId,
    required this.email,
    required this.hashedPassword,
  });

  factory Loginmodel.fromJson(Map<String, dynamic> json) => Loginmodel(
        userId: json["UserId"],
        email: json["Email"],
        hashedPassword: json["HashedPassword"],
      );

  Map<String, dynamic> toJson() => {
        "UserId": userId,
        "Email": email,
        "HashedPassword": hashedPassword,
      };
}
