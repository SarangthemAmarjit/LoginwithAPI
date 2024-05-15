import 'dart:convert';
import 'dart:developer';

import 'dart:io';

import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:logindemo/constant/constant.dart';
import 'package:logindemo/model/model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetxTapController extends GetxController {
  final BuildContext context;

  GetxTapController({required this.context});

  bool _isemailvalid = false;
  bool _islogin = false;
  String _validatedmail = '';
  Getuserdetails? _alluserdata;
  Getuserdetails? get alluserdata => _alluserdata;

  bool get isemailvalid => _isemailvalid;
  bool get islogin => _islogin;
  String get validatedmail => _validatedmail;

  void Checkloginstatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.containsKey('isLogin')) {
      bool islogin = prefs.getBool('isLogin')!;
      int id = prefs.getInt('id')!;
      getdatabyid(id: id);
      _islogin = islogin;
      log(islogin.toString());
      update();
    } else {
      _islogin = false;
      log(_islogin.toString());
      update();
    }
  }

  void getdatabyid({required int id}) async {
    try {
      final url = Uri.parse('$createapi/$id');

      final response = await http.get(
        url,
      );

      if (response.statusCode == 200) {
        var alldata = getuserdetailsFromJson(response.body);
        _alluserdata = alldata;
        update();
        log(_alluserdata!.firstName);
      } else {
        EasyLoading.showError(response.body);
      }
    } catch (e) {
      EasyLoading.showError(e.toString());
      log(e.toString());
    }
  }

  void login({required String email, required String password}) async {
    final url = Uri.parse(loginapi); // Example endpoint
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final body = jsonEncode({
      'email': email,
      'hashedPassword': password,
    });

    try {
      final response = await http.post(url,
          headers: {"Content-Type": "application/json"}, body: body);

      if (response.statusCode == 200) {
        var alldata = getuserdetailsFromJson(response.body);
        _alluserdata = alldata;

        prefs.setBool('isLogin', true);
        prefs.setInt('id', alldata.id);
        _islogin = true;
        update();

        EasyLoading.showSuccess('Login Successfully');
      } else {
        EasyLoading.showError(response.body);
      }
    } catch (e) {
      EasyLoading.showError(e.toString());
      log(e.toString());
    }
  }

  void logoutaccount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();

    _islogin = false;
    update();
  }

  void createaccount(
      {required String email,
      required String firstname,
      required String lastname,
      required String address,
      required String number,
      required String password}) async {
    final url = Uri.parse(createapi); // Example endpoint

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
        Checkloginstatus();
        EasyLoading.showSuccess('Account Created Successfully');
      } else {
        EasyLoading.showError(response.body);
      }
    } catch (e) {
      EasyLoading.showError(e.toString());
      log(e.toString());
    }
  }

  Future forgetpasswordcheckmail({
    required String email,
  }) async {
    // Example endpoint

    log(email.toString());
    try {
      final queryParameters = {
        "email": email,
      };
      final response = await http.post(
        Uri.http(forgetpasswordcheckmailapi, '/api/UserAuths/ForgetPassword',
            queryParameters),
      );

      if (response.statusCode == 200) {
        _validatedmail = email;

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

  Future changepassword({
    required String newpassword,
  }) async {
    // Example endpoint

    final body = jsonEncode({
      "email": _validatedmail,
      "hashedPassword": newpassword,
    });
    try {
      final response = await http.put(Uri.parse(changepasswordapi),
          headers: {"Content-Type": "application/json"}, body: body);

      if (response.statusCode == 200) {
        context.router.replaceNamed('/');
        EasyLoading.showSuccess('Password Changed Successfully');
      } else {
        EasyLoading.showError(response.body);
      }
    } catch (e) {
      EasyLoading.showError(e.toString());
      log(e.toString());
    }
  }
}
