// To parse this JSON data, do
//
//     final getuserdetails = getuserdetailsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Getuserdetails getuserdetailsFromJson(String str) =>
    Getuserdetails.fromJson(json.decode(str));

String getuserdetailsToJson(Getuserdetails data) => json.encode(data.toJson());

class Getuserdetails {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String address;
  final String phoneNumber;

  Getuserdetails({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.address,
    required this.phoneNumber,
  });

  factory Getuserdetails.fromJson(Map<String, dynamic> json) => Getuserdetails(
        id: json["Id"],
        firstName: json["FirstName"],
        lastName: json["LastName"],
        email: json["Email"],
        password: json["Password"],
        address: json["Address"],
        phoneNumber: json["PhoneNumber"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "FirstName": firstName,
        "LastName": lastName,
        "Email": email,
        "Password": password,
        "Address": address,
        "PhoneNumber": phoneNumber,
      };
}
