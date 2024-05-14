import 'dart:developer';

import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:logindemo/controller/tapcontroller.dart';

import 'package:logindemo/router/router.gr.dart';

@RoutePage()
class AuthFlowPage extends StatefulWidget {
  const AuthFlowPage({super.key});

  @override
  State<AuthFlowPage> createState() => _AuthFlowPageState();
}

class _AuthFlowPageState extends State<AuthFlowPage> {
  @override
  void initState() {
    GetxTapController controller = Get.put(GetxTapController(context: context));
    controller.Checkloginstatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    GetxTapController controller = Get.put(GetxTapController(context: context));

    return GetBuilder<GetxTapController>(builder: (_) {
      return AutoRouter.declarative(routes: (context) {
        if (controller.islogin) {
          return [const HomePage()];
        } else {
          return [LoginPage()];
        }
      });
    });
  }
}
