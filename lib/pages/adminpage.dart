import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:logindemo/config.dart';
import 'package:logindemo/controller/tapcontroller.dart';

@RoutePage()
class AdminPage extends StatelessWidget {
  AdminPage({super.key});

  TextEditingController forgetmail = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    GetxTapController controller = Get.put(GetxTapController(context: context));
    return Scaffold(
      body: GetBuilder<GetxTapController>(builder: (_) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/primaryBg.png'),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/admin2.png',
                height: 250,
              ),
              const Text(
                'ADMIN PANEL LOGIN',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                child: Card(
                  elevation: 10,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 20),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7)),
                              elevation: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 253, 253, 252),
                                    borderRadius: BorderRadius.circular(7)),
                                height: 43,
                                child: Focus(
                                  onFocusChange: (value) {
                                    // gcontroller.onfocuschange(
                                    //     value: value,
                                    //     searchtext: searchcontroller.text);
                                  },
                                  child: TextFormField(
                                    controller: controller.isemailvalid
                                        ? passwordcontroller
                                        : forgetmail,
                                    keyboardType: TextInputType.emailAddress,

                                    onEditingComplete: () {},
                                    // controller: searchcontroller,
                                    onChanged: ((value) {}),
                                    decoration: InputDecoration(
                                        hintText: 'Enter Userid or email',
                                        contentPadding:
                                            const EdgeInsets.only(top: 7),
                                        prefixIcon: const Icon(Icons.person),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(7)),
                                        hintStyle: const TextStyle(
                                            color: Colors.grey)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, bottom: 15),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7)),
                              elevation: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 253, 253, 252),
                                    borderRadius: BorderRadius.circular(7)),
                                height: 43,
                                child: Focus(
                                  onFocusChange: (value) {
                                    // gcontroller.onfocuschange(
                                    //     value: value,
                                    //     searchtext: searchcontroller.text);
                                  },
                                  child: TextFormField(
                                    controller: confirmpasswordcontroller,
                                    keyboardType: TextInputType.emailAddress,

                                    onEditingComplete: () {},
                                    // controller: searchcontroller,
                                    onChanged: ((value) {}),
                                    decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.only(top: 7),
                                        prefixIcon: const Icon(Icons.lock),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(7)),
                                        hintText: 'Enter Password',
                                        hintStyle: const TextStyle(
                                            color: Colors.grey)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // controller.isemailvalid
                              //     ? (passwordcontroller.text ==
                              //             confirmpasswordcontroller.text)
                              //         ? controller.changepassword(
                              //             newpassword: passwordcontroller.text)
                              //         : EasyLoading.showError(
                              //             'Confirm Password Not Same')
                              //     : controller
                              //         .forgetpasswordcheckmail(
                              //             email: forgetmail.text)
                              //         .then((value) => forgetmail.clear());
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: signInButton,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Padding(
                                  padding: EdgeInsets.only(top: 6.0),
                                  child: Text(
                                    'Login',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
