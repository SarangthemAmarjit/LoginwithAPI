import 'dart:developer';

import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:logindemo/controller/tapcontroller.dart';

import 'package:logindemo/router/router.gr.dart';

@RoutePage()
class AuthFlowPage extends StatelessWidget {
  const AuthFlowPage({super.key});

  @override
  Widget build(BuildContext context) {
    GetxTapController controller = Get.put(GetxTapController(context: context));

    return GetBuilder<GetxTapController>(builder: (_) {
      return AutoRouter.declarative(routes: (context) {
        log("Auth Flow ${controller.islogin.toString()}");
        if (controller.islogin == null) {
          return [const LoadingPage()];
        } else if (controller.islogin!) {
          return [const HomePage()];
        } else {
          return [LoginPage()];
        }
      });
    });
  }
}
