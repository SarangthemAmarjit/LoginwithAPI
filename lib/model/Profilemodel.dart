// To parse this JSON data, do
//
//     final getImageurl = getImageurlFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GetImageurl getImageurlFromJson(String str) =>
    GetImageurl.fromJson(json.decode(str));

String getImageurlToJson(GetImageurl data) => json.encode(data.toJson());

class GetImageurl {
  final String imageUrl;

  GetImageurl({
    required this.imageUrl,
  });

  factory GetImageurl.fromJson(Map<String, dynamic> json) => GetImageurl(
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "imageUrl": imageUrl,
      };
}
