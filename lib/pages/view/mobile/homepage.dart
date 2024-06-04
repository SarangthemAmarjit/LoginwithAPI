import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:logindemo/controller/tapcontroller.dart';
import 'package:logindemo/pages/view/mobile/adminhomepage.dart';
import 'package:logindemo/pages/view/mobile/userhomepage.dart';
import 'package:logindemo/pages/view/web/adminloginpage.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    GetxTapController controller = Get.put(GetxTapController(context: context));
    log("From homePge : +${controller.isuserlogin}");
    return GetBuilder<GetxTapController>(builder: (_) {
      return controller.isuserlogin ? const UserhomePage() : AdminhomePage();
    });
  }
}
