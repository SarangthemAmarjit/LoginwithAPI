// To parse this JSON data, do
//
//     final getadmindetails = getadmindetailsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Getadmindetails getadmindetailsFromJson(String str) =>
    Getadmindetails.fromJson(json.decode(str));

String getadmindetailsToJson(Getadmindetails data) =>
    json.encode(data.toJson());

class Getadmindetails {
  final int adminId;
  final String email;
  final String passwordHash;
  final String fullName;
  final DateTime createdAt;
  final DateTime updatedAt;

  Getadmindetails({
    required this.adminId,
    required this.email,
    required this.passwordHash,
    required this.fullName,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Getadmindetails.fromJson(Map<String, dynamic> json) =>
      Getadmindetails(
        adminId: json["AdminId"],
        email: json["Email"],
        passwordHash: json["PasswordHash"],
        fullName: json["FullName"],
        createdAt: DateTime.parse(json["CreatedAt"]),
        updatedAt: DateTime.parse(json["UpdatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "AdminId": adminId,
        "Email": email,
        "PasswordHash": passwordHash,
        "FullName": fullName,
        "CreatedAt": createdAt.toIso8601String(),
        "UpdatedAt": updatedAt.toIso8601String(),
      };
}
