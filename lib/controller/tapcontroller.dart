import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class GetxTapController extends GetxController {
  final BuildContext context;

  GetxTapController({required this.context});

  bool _isemailvalid = false;

  bool get isemailvalid => _isemailvalid;

  void login({required String email, required String password}) async {
    final url =
        Uri.parse('http://10.10.1.44:8088/api/UserAuths'); // Example endpoint

    final body = jsonEncode({
      'email': email,
      'hashedPassword': password,
    });

    try {
      final response = await http.post(url,
          headers: {"Content-Type": "application/json"}, body: body);

      if (response.statusCode == 200) {
        context.router.replaceNamed('/homepage');
        EasyLoading.showSuccess('Login Successfully');
      } else {
        EasyLoading.showError(response.body);
      }
    } catch (e) {
      EasyLoading.showError(e.toString());
      log(e.toString());
    }
  }

  void createaccount(
      {required String email,
      required String firstname,
      required String lastname,
      required String address,
      required String number,
      required String password}) async {
    final url = Uri.parse(
        'http://10.10.1.44:8088/api/Registrationtables'); // Example endpoint

    final body = jsonEncode({
      "firstName": firstname,
      "lastName": lastname,
      "email": email,
      "password": password,
      "address": address,
      "phoneNumber": number
    });

    try {
      final response = await http.post(url,
          headers: {"Content-Type": "application/json"}, body: body);

      if (response.statusCode == 200) {
        context.router.replaceNamed('/');
        EasyLoading.showSuccess('Account Created Successfully');
      } else {
        EasyLoading.showError(response.body);
      }
    } catch (e) {
      EasyLoading.showError(e.toString());
      log(e.toString());
    }
  }

  void forgetpasswordcheckmail({
    required String email,
  }) async {
    // Example endpoint
    log(email.toString());
    try {
      final queryParameters = {
        "email": email,
      };
      final response = await http.post(
        Uri.http('10.10.1.44:8088', '/api/UserAuths/ForgetPassword',
            queryParameters),
      );

      if (response.statusCode == 200) {
        _isemailvalid = true;
        update();
      } else {
        EasyLoading.showError(response.body);
      }
    } catch (e) {
      EasyLoading.showError(e.toString());
      log(e.toString());
    }
  }
}
