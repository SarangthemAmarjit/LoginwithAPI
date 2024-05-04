import 'package:flutter/material.dart';
import 'package:logindemo/layers/layer_one.dart';
import 'package:logindemo/loginpage.dart';

void main() {
  runApp(MaterialApp(
    title: 'Login Demo',
    theme: ThemeData(
      fontFamily: 'KulimPark',
    ),
    debugShowCheckedModeBanner: false,
    home: const LoginPage(),
  ));
}
