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
  bool? _islogin;
  bool _islogingdataloaded = false;
  String _validatedmail = '';
  Getuserdetails? _alluserdata;
  Getuserdetails? get alluserdata => _alluserdata;
  String _emailvalidateerror = '';

  String get emailvalidateerror => _emailvalidateerror;
  var isDataLoading = false.obs;
  bool get isemailvalid => _isemailvalid;
  bool? get islogin => _islogin;
  String get validatedmail => _validatedmail;
  bool get islogingdataloaded => _islogingdataloaded;
  @override
  Future<void> onInit() async {
    super.onInit();
    Checkloginstatus();
  }

  void Checkloginstatus() async {
    _islogingdataloaded = true;
    update();
    SharedPreferences prefs = await SharedPreferences.getInstance();

    log(_islogingdataloaded.toString());

    if (prefs.containsKey('isLogin')) {
      bool islogin = prefs.getBool('isLogin')!;
      int id = prefs.getInt('id')!;
      getdatabyid(id: id);
      _islogingdataloaded = false;
      _islogin = islogin;
      log(islogin.toString());

      update();
    } else {
      _islogingdataloaded = false;
      _islogin = false;
      log(_islogin.toString());

      update();
    }
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      _emailvalidateerror = 'Please enter your email';
    }
    String pattern = r'\w+@\w+\.\w+';
    if (!RegExp(pattern).hasMatch(value!)) {
      _emailvalidateerror = 'Please enter a valid email address';
    }
    return null;
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

  void showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 20),
                Text("Loading, please wait..."),
              ],
            ),
          ),
        );
      },
    );
  }

  void login({required String email, required String password}) async {
    showLoadingDialog(context);
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
        context.router.pop();
        prefs.setBool('isLogin', true);
        prefs.setInt('id', alldata.id);
        _islogin = true;
        update();

        EasyLoading.showSuccess('Login Successfully');
      } else {
        context.router.pop();
        EasyLoading.showError(response.body);
      }
    } catch (e) {
      context.router.pop();
      EasyLoading.showError(e.toString());
      log(e.toString());
    }
  }

  void logoutaccount() async {
    _islogingdataloaded = false;
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
      "firstName": firstname.trim(),
      "lastName": lastname.trim(),
      "email": email.trim(),
      "password": password.trim(),
      "address": address.trim(),
      "phoneNumber": number.trim()
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
        Uri.http(forgetpasswordcheckmailapi2, '/api/UserAuths/ForgetPassword',
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
