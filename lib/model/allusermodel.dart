// To parse this JSON data, do
//
//     final getallusers = getallusersFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Getallusers> getallusersFromJson(String str) => List<Getallusers>.from(
    json.decode(str).map((x) => Getallusers.fromJson(x)));

String getallusersToJson(List<Getallusers> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Getallusers {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String address;
  final String phoneNumber;
  final String? profileImage;

  Getallusers({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.address,
    required this.phoneNumber,
    required this.profileImage,
  });

  factory Getallusers.fromJson(Map<String, dynamic> json) => Getallusers(
        id: json["Id"],
        firstName: json["FirstName"],
        lastName: json["LastName"],
        email: json["Email"],
        password: json["Password"],
        address: json["Address"],
        phoneNumber: json["PhoneNumber"],
        profileImage: json["ProfileImage"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "FirstName": firstName,
        "LastName": lastName,
        "Email": email,
        "Password": password,
        "Address": address,
        "PhoneNumber": phoneNumber,
        "ProfileImage": profileImage,
      };
}
