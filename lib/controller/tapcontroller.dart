import 'dart:convert';
import 'dart:developer';

import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:logindemo/constant/constant.dart';
import 'package:logindemo/model/Profilemodel.dart';
import 'package:logindemo/model/adminmodel.dart';
import 'package:logindemo/model/alladminsmodel.dart';
import 'package:logindemo/model/allusermodel.dart';
import 'package:logindemo/model/usermodel.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetxTapController extends GetxController {
  final BuildContext context;

  GetxTapController({required this.context});

  bool _isfocusontextfield = false;
  bool get isfocusontextfield => _isfocusontextfield;
  bool _isemailvalid = false;
  bool? _islogin;
  bool? get islogin => _islogin;

  bool _isuserlogin = false;
  bool get isuserlogin => _isuserlogin;

  String _validatedmail = '';
  Getuserdetails? _alluserdata;

  String? _profileimageurl;
  String? get profileimageurl => _profileimageurl;

  Getuserdetails? get alluserdata => _alluserdata;

  Getalladmins? _alladmin;
  Getalladmins? get alladmin => _alladmin;

  List<Getallusers> _getalluserlist = [];
  List<Getallusers> get getalluserlist => _getalluserlist;

  Getadmindetails? _alladmindata;
  Getadmindetails? get alladmindata => _alladmindata;

  bool _obscureTextPassword = true;
  bool get obscureTextPassword => _obscureTextPassword;

  String? _firstnamevaliderror;
  String? get firstnamevaliderror => _firstnamevaliderror;

  String? _lastnamevaliderror;
  String? get lastnamevaliderror => _lastnamevaliderror;

  String? _passwordnamevaliderror;
  String? get passwordnamevaliderror => _passwordnamevaliderror;

  String? _numbernamevaliderror;
  String? get numbernamevaliderror => _numbernamevaliderror;

  String? _addressvaliderror;
  String? get addressvaliderror => _addressvaliderror;

  String? _emailvaliderror;
  String? get emailvaliderror => _emailvaliderror;

  String? _loginemailvaliderror;
  String? get loginemailvaliderror => _loginemailvaliderror;

  String? _forgetpassemailvaliderror;
  String? get forgetpassemailvaliderror => _forgetpassemailvaliderror;

  var isDataLoading = false.obs;
  bool get isemailvalid => _isemailvalid;

  String get validatedmail => _validatedmail;

  final ImagePicker _picker = ImagePicker();
  File? _image;
  Uint8List? _webImage;

  File? get image => _image;
  Uint8List? get webImage => _webImage;

  @override
  Future<void> onInit() async {
    super.onInit();
    getallusers();
    checkloginstatus();
  }

  Future? _showLoadingDialog() {
    showDialog(
      useSafeArea: true,
      context: context,
      barrierDismissible: false, // Prevents dialog from being dismissed
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Lottie.asset(
                  'assets/images/loading3.json',
                  height: 100,
                ),
                const Text(
                  'Please wait...',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
    return null;
  }

  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      if (kIsWeb) {
        var bytes = await pickedFile.readAsBytes();

        _webImage = bytes;
        update();

        // Save to SharedPreferences as a base64 string (if needed)
      } else {
        final tempFile = File(pickedFile.path);

        _image = tempFile;
        update();
      }
    }
  }

  void checkloginstatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.containsKey('isLogin')) {
      _islogin = true;
      update();
      if (prefs.containsKey('user')) {
        int id = prefs.getInt('userid')!;
        getuserdatabyid(id: id);

        _isuserlogin = true;

        update();
      } else {
        int id = prefs.getInt('adminid')!;
        getadmindatabyid(id: id);

        _isuserlogin = false;

        update();
      }
    } else {
      _islogin = false;
      log(_islogin.toString());

      update();
    }
  }

  void validatefirstname(String value) {
    // Reset previous validation error

    _firstnamevaliderror = null;
    update();

    // Check for null or empty string
    if (value.isEmpty) {
      _firstnamevaliderror = 'First Name Field Cannot be Empty';
      update();

      return;
    }
    String pattern = r'^[A-Z][a-zA-Z0-9\s]*$';
    if (!RegExp(pattern).hasMatch(value)) {
      _firstnamevaliderror = 'The first letter must be capitalized';

      return;
    }
    if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(value)) {
      _firstnamevaliderror = 'Avoid special characters and white spaces';
      update();
    }
    return;
  }

  void validatelastname(String value) {
    // Reset previous validation error

    _lastnamevaliderror = null;
    update();

    // Check for null or empty string
    if (value.isEmpty) {
      _lastnamevaliderror = 'Last Name Field Cannot be Empty';
      update();

      return;
    }
    String pattern = r'^[A-Z][a-zA-Z0-9\s]*$';
    if (!RegExp(pattern).hasMatch(value)) {
      _lastnamevaliderror = 'The first letter must be capitalized';

      return;
    }
    if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(value)) {
      _lastnamevaliderror = 'Avoid special characters and white spaces';
      update();
    }
    return;
  }

  void validatephonenumber(String value) {
    // Reset previous validation error

    _numbernamevaliderror = null;
    update();

    // Check for null or empty string
    if (value.isEmpty) {
      _numbernamevaliderror = 'Please enter your phone number';
      update();

      return;
    }
    String pattern = r'^(?:\(\d{3}\)|\d{3}-)\d{3}-\d{4}$|^\d{10}$';
    if (!RegExp(pattern).hasMatch(value)) {
      _numbernamevaliderror = 'Please enter a valid phone number';

      return;
    }

    return;
  }

  void validateaddresss(String value) {
    // Reset previous validation error

    _addressvaliderror = null;
    update();

    // Check for null or empty string
    if (value.isEmpty) {
      _addressvaliderror = 'Please enter your address';
      update();

      return;
    }
    String pattern = r'^[a-zA-Z0-9\s,.\-]{3,}$';
    if (!RegExp(pattern).hasMatch(value)) {
      _addressvaliderror = 'Please enter a valid address';

      return;
    }

    return;
  }

  validatepassword(String value) {
    // Reset previous validation error

    _passwordnamevaliderror = null;
    update();

    // Check for null or empty string
    if (value.isEmpty) {
      _passwordnamevaliderror = 'Password is required';
      update();

      return;
    }

    if (!RegExp(r'.{8,}').hasMatch(value)) {
      _passwordnamevaliderror = 'Password must be at least 8 characters long';
      update();
      return;
    }

    if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) {
      _passwordnamevaliderror = 'At least one uppercase letter is required';
      update();
      return;
    }

    if (!RegExp(r'(?=.*[a-z])').hasMatch(value)) {
      _passwordnamevaliderror = 'At least one lowercase letter is required';
      update();
      return;
    }

    if (!RegExp(r'(?=.*\d)').hasMatch(value)) {
      _passwordnamevaliderror = 'At least one digit is required';
      update();
      return;
    }
    String specialCharPattern = r'(?=.*[!@#$%^&*()_+\-=\[\]{};:"\\|,.<>\/?])';
    if (!RegExp(specialCharPattern).hasMatch(value)) {
      _passwordnamevaliderror = 'At least one special character is required';
      update();
      return;
    }

    return;
  }

  void emailonfocuschange({required bool value, required String searchtext}) {
    _isfocusontextfield = value;
    update();
    if (_isfocusontextfield == false) {
      if (searchtext.isEmpty) {
        _emailvaliderror = null;

        update();
      }
    }
  }

  void loginemailonfocuschange(
      {required bool value, required String searchtext}) {
    _isfocusontextfield = value;
    update();
    if (_isfocusontextfield == false) {
      if (searchtext.isEmpty) {
        _loginemailvaliderror = null;

        update();
      }
    }
  }

  void forgetpassemailonfocuschange(
      {required bool value, required String searchtext}) {
    _isfocusontextfield = value;
    update();
    if (_isfocusontextfield == false) {
      if (searchtext.isEmpty) {
        _forgetpassemailvaliderror = null;

        update();
      }
    }
  }

  void firstnameonfocuschange(
      {required bool value, required String searchtext}) {
    _isfocusontextfield = value;
    update();
    if (_isfocusontextfield == false) {
      if (searchtext.isEmpty) {
        _firstnamevaliderror = null;

        update();
      }
    }
  }

  void lastnameonfocuschange(
      {required bool value, required String searchtext}) {
    _isfocusontextfield = value;
    update();
    if (_isfocusontextfield == false) {
      if (searchtext.isEmpty) {
        _lastnamevaliderror = null;

        update();
      }
    }
  }

  void passwordonfocuschange(
      {required bool value, required String searchtext}) {
    _isfocusontextfield = value;
    update();
    if (_isfocusontextfield == false) {
      if (searchtext.isEmpty) {
        _passwordnamevaliderror = null;

        update();
      }
    }
  }

  void phoneonfocuschange({required bool value, required String searchtext}) {
    _isfocusontextfield = value;
    update();
    if (_isfocusontextfield == false) {
      if (searchtext.isEmpty) {
        _numbernamevaliderror = null;

        update();
      }
    }
  }

  void addressonfocuschange({required bool value, required String searchtext}) {
    _isfocusontextfield = value;
    update();
    if (_isfocusontextfield == false) {
      if (searchtext.isEmpty) {
        _addressvaliderror = null;

        update();
      }
    }
  }

  void loginvalidateEmail(String value) {
    // Reset previous validation error

    _loginemailvaliderror = null;
    update();

    // Check for null or empty string
    if (value.isEmpty) {
      _loginemailvaliderror = 'Email is Required';
      update();

      return;
    }

    // Check for length between 5 and 15 characters
    String pattern = r'\w+@\w+\.\w+';
    if (!RegExp(pattern).hasMatch(value)) {
      _loginemailvaliderror = 'Please enter a valid email address';
      update();
    }
    if (!RegExp(r'^[^\s]+$').hasMatch(value)) {
      _loginemailvaliderror = 'Avoid white space';
      update();
    }

    // Check for special characters or white spaces

    return;
  }

  void forgetpassvalidateEmail(String value) {
    // Reset previous validation error

    _forgetpassemailvaliderror = null;
    update();

    // Check for null or empty string
    if (value.isEmpty) {
      _forgetpassemailvaliderror = 'Email is Required';
      update();

      return;
    }

    // Check for length between 5 and 15 characters
    String pattern = r'\w+@\w+\.\w+';
    if (!RegExp(pattern).hasMatch(value)) {
      _forgetpassemailvaliderror = 'Please enter a valid email address';
      update();
    }
    if (!RegExp(r'^[^\s]+$').hasMatch(value)) {
      _forgetpassemailvaliderror = 'Avoid white space';
      update();
    }

    // Check for special characters or white spaces

    return;
  }

  void validateEmail(String value) {
    // Reset previous validation error

    _emailvaliderror = null;
    update();

    // Check for null or empty string
    if (value.isEmpty) {
      _emailvaliderror = 'Email is Required';
      update();

      return;
    }

    // Check for length between 5 and 15 characters
    String pattern = r'\w+@\w+\.\w+';
    if (!RegExp(pattern).hasMatch(value)) {
      _emailvaliderror = 'Please enter a valid email address';
      update();
    }
    if (!RegExp(r'^[^\s]+$').hasMatch(value)) {
      _emailvaliderror = 'Avoid white space';
      update();
    }

    // Check for special characters or white spaces

    return;
  }

  void getuserdatabyid({required int id}) async {
    try {
      final url = Uri.parse('$getalluserapi/$id');

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

  void getimage({required int id}) async {
    log(id.toString());
    try {
      final queryParameters = {
        "id": id.toString(),
      };
      final response = await http.get(
        Uri.http(forgetpasswordcheckmailapi2, getimageapi, queryParameters),
      );
      log('Status Code :${response.statusCode}');
      if (response.statusCode == 200) {
        var alldata = getImageurlFromJson(response.body);
        _profileimageurl = alldata.imageUrl;
        update();
        log(_profileimageurl.toString());
      } else {
        log('error');
        log(response.body);
      }
    } catch (e) {
      log('error catch');
      EasyLoading.showError(e.toString());
      log(e.toString());
    }
  }

  void getadmindatabyid({required int id}) async {
    try {
      final url = Uri.parse('$getalladminapi/$id');

      final response = await http.get(
        url,
      );

      if (response.statusCode == 200) {
        var alldata = getalladminsFromJson(response.body);
        _alladmin = alldata;
        update();
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
        return Center(
          child: LoadingAnimationWidget.staggeredDotsWave(
            color: Colors.white,
            size: 50,
          ),
        );
      },
    );
  }

  void login({required String email, required String password}) async {
    await _showLoadingDialog();
    await Future.delayed(const Duration(seconds: 3));
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
        // ignore: use_build_context_synchronously

        prefs.setBool('isLogin', true);
        prefs.setInt('userid', alldata.id);
        prefs.setBool('user', true);
        _islogin = true;
        log('Login Successfully');

        update();
        context.router.maybePop();
        checkloginstatus();
        context.router.replaceNamed('/');
        EasyLoading.showSuccess('Login Successfully');
      } else {
        // ignore: use_build_context_synchronously
        context.router.maybePop();
        EasyLoading.showError(response.body);
      }
    } catch (e) {
      // ignore: use_build_context_synchronously
      context.router.maybePop();
      EasyLoading.showError(e.toString());
      log("Exception $e");
    }
  }

  void logoutaccount() async {
    _showLoadingDialog();
    await Future.delayed(const Duration(seconds: 2));

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();

    _islogin = false;
    _isuserlogin = false;
    update();
    context.router.pop();
  }

  void createaccount(
      {required String email,
      required String firstname,
      required String lastname,
      required String address,
      required String number,
      required String password}) async {
    showLoadingDialog(context);
    final url = Uri.parse(getalluserapi); // Example endpoint

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
        context.router.pop();
        context.router.replaceNamed('/');
        EasyLoading.showSuccess('Account Created Successfully');
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

  Future forgetpasswordcheckmail({
    required String email,
  }) async {
    showLoadingDialog(context);
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
        context.router.pop();
        _validatedmail = email;

        _isemailvalid = true;
        update();
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

  void toggleSignup() {
    _obscureTextPassword = !_obscureTextPassword;
    update();
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

  //ADMIN PANEL SECTION

  void deleteuser({required int id}) async {
    _showLoadingDialog();
    await Future.delayed(const Duration(seconds: 2));
    try {
      final url = Uri.parse('$getalluserapi/$id');

      final response = await http.delete(
        url,
      );

      if (response.statusCode == 200 || response.statusCode == 204) {
        getallusers();
        log('User Deleted Successfully');
        context.router.pop();
      } else {
        EasyLoading.showError(response.body);
        context.router.pop();
      }
    } catch (e) {
      EasyLoading.showError(e.toString());
      log(e.toString());
      context.router.pop();
    }
  }

  void getallusers() async {
    try {
      final url = Uri.parse(getalluserapi);

      final response = await http.get(
        url,
      );

      if (response.statusCode == 200) {
        var alldata = getallusersFromJson(response.body);
        _getalluserlist = alldata;
        update();
      } else {
        EasyLoading.showError('Error : ${response.body.toString()}');
      }
    } catch (e) {
      EasyLoading.showError('Error : ${e.toString()}');
      log(e.toString());
    }
  }

  void adminlogin({required String email, required String password}) async {
    _showLoadingDialog();
    await Future.delayed(const Duration(seconds: 2));
    log(password);
    final url = Uri.parse(adminloginapi); // Example endpoint
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final body = jsonEncode({
      'email': email,
      'PasswordHash': password,
    });

    try {
      final response = await http.post(url,
          headers: {"Content-Type": "application/json"}, body: body);

      if (response.statusCode == 200) {
        var alldata = getadmindetailsFromJson(response.body);
        _alladmindata = alldata;
        // ignore: use_build_context_synchronously
        context.router.maybePop();
        prefs.setBool('isLogin', true);
        prefs.setInt('adminid', alldata.adminId);
        prefs.setBool('isadminLogin', true);
        _islogin = true;
        update();
        checkloginstatus();
        getallusers();
        context.router.replaceNamed('/');
        EasyLoading.showSuccess('Login Successfully');
      } else {
        // ignore: use_build_context_synchronously
        context.router.maybePop();
        EasyLoading.showError('sfsafas ${response.body}');
      }
    } catch (e) {
      // ignore: use_build_context_synchronously
      context.router.maybePop();
      EasyLoading.showError(e.toString());
      log(e.toString());
    }
  }
}
