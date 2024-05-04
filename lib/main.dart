import 'package:flutter/material.dart';
import 'package:logindemo/layers/layer_one.dart';
import 'package:logindemo/loginpage.dart';

void main() {
  runApp(MaterialApp(
    title: 'Login Demo',
    theme: ThemeData(fontFamily: 'KulimPark', useMaterial3: false),
    debugShowCheckedModeBanner: false,
    home: const LoginPage(),
  ));
}
