import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:logindemo/pages/view/mobile/forgetpasswordpage.dart';

import 'package:logindemo/pages/view/mobile/loginpage.dart';
import 'package:logindemo/router/router.dart';

void main() {
  runApp(const MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
      title: 'LogIn Demo',
      builder: EasyLoading.init(),
      theme: ThemeData(
          brightness: Brightness.light,
          fontFamily: 'KulimPark',
          useMaterial3: false
          /* light theme settings */
          ),
      // darkTheme: ThemeData(brightness: Brightness.dark, fontFamily: 'KulimPark'
      //     /* dark theme settings */
    );
  }
}
