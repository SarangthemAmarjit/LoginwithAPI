import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:logindemo/config.dart';
import 'package:logindemo/controller/tapcontroller.dart';

import 'package:logindemo/router/router.gr.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController mailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    GetxTapController controller = Get.put(GetxTapController(context: context));
    log(controller.islogingdataloaded.toString());
    return Scaffold(
      body: GetBuilder<GetxTapController>(builder: (_) {
        return Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/primaryBg.png'),
            fit: BoxFit.cover,
          )),
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 30),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: layerOneBg,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60.0),
                          bottomRight: Radius.circular(60.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, top: 20),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: layerTwoBg,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60.0),
                            bottomRight: Radius.circular(60.0),
                            bottomLeft: Radius.circular(60.0),
                          ),
                        ),
                        child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Column(
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7)),
                                    elevation: 10,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 253, 253, 252),
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                      height: 43,
                                      child: Focus(
                                        onFocusChange: (value) {
                                          // gcontroller.onfocuschange(
                                          //     value: value,
                                          //     searchtext: searchcontroller.text);
                                        },
                                        child: TextFormField(
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          controller: mailcontroller,
                                          onEditingComplete: () {},
                                          // controller: searchcontroller,
                                          onChanged: ((value) {}),
                                          decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.only(top: 7),
                                              prefixIcon:
                                                  const Icon(Icons.person),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(7)),
                                              hintText: 'Enter Userid or Email',
                                              hintStyle: const TextStyle(
                                                  color: Colors.grey)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7)),
                                    elevation: 10,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 253, 253, 252),
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                      height: 43,
                                      child: Focus(
                                        onFocusChange: (value) {
                                          // gcontroller.onfocuschange(
                                          //     value: value,
                                          //     searchtext: searchcontroller.text);
                                        },
                                        child: TextFormField(
                                          keyboardType:
                                              TextInputType.visiblePassword,
                                          controller: passwordcontroller,
                                          obscureText: true,
                                          onEditingComplete: () {},
                                          // controller: searchcontroller,
                                          onChanged: ((value) {}),
                                          decoration: InputDecoration(
                                              suffixIcon: GestureDetector(
                                                onTap: controller.toggleSignup,
                                                child: Icon(
                                                  controller.obscureTextPassword
                                                      ? FontAwesomeIcons.eye
                                                      : FontAwesomeIcons
                                                          .eyeSlash,
                                                  size: 15.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.only(top: 7),
                                              prefixIcon:
                                                  const Icon(Icons.lock),
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
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      context.router.push(ForgetPasswordPage());
                                    },
                                    child: const Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        'Forgot Password',
                                        style: TextStyle(
                                            color: forgotPasswordText,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller.login(
                                          email: mailcontroller.text,
                                          password: passwordcontroller.text);
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: signInButton,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Padding(
                                        padding: EdgeInsets.only(top: 6.0),
                                        child: Text(
                                          'Log In',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    height: 0.5,
                                    width: 310,
                                    color: inputBorder,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'Don\'t have an account? ',
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            context.router
                                                .push(CreateAccountPage());
                                          },
                                          child: const Text('Create Account'))
                                    ],
                                  )
                                ],
                              ),
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Login as Admin',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
