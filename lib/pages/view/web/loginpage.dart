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

class WebviewLoginPage extends StatelessWidget {
  final TextEditingController mailcontroller;
  final TextEditingController passwordcontroller;
  const WebviewLoginPage(
      {super.key,
      required this.mailcontroller,
      required this.passwordcontroller});

  @override
  Widget build(BuildContext context) {
    GetxTapController controller = Get.put(GetxTapController(context: context));

    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<GetxTapController>(builder: (_) {
        return Padding(
          padding: const EdgeInsets.all(100),
          child: Card(
            elevation: 10,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/images/login.jpg',
                      fit: BoxFit.contain,
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                          image: DecorationImage(
                              image: AssetImage('assets/images/primaryBg.png'),
                              fit: BoxFit.cover,
                              opacity: 0.7)),
                      child: Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 20, bottom: 30),
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                        fontSize: 48,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ),
                              ),

                              SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    child: Column(
                                      children: [
                                        Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7)),
                                          elevation: 10,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 253, 253, 252),
                                                borderRadius:
                                                    BorderRadius.circular(7)),
                                            height: 60,
                                            child: Focus(
                                              onFocusChange: (value) {
                                                controller
                                                    .loginemailonfocuschange(
                                                        value: value,
                                                        searchtext:
                                                            mailcontroller
                                                                .text);
                                              },
                                              child: TextFormField(
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                controller: mailcontroller,
                                                onEditingComplete: () {},
                                                // controller: searchcontroller,
                                                onChanged: ((value) {
                                                  controller.loginvalidateEmail(
                                                      value);
                                                }),
                                                decoration: InputDecoration(
                                                    contentPadding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                            vertical: 25.0,
                                                            horizontal: 10.0),
                                                    prefixIcon: const Icon(
                                                        Icons.person),
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(7)),
                                                    hintText:
                                                        'Enter Userid or Email',
                                                    hintStyle: const TextStyle(
                                                        color: Colors.grey)),
                                              ),
                                            ),
                                          ),
                                        ),
                                        if (controller.loginemailvaliderror !=
                                            null)
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 1, left: 5),
                                            child: Row(
                                              children: [
                                                Text(
                                                  controller
                                                      .loginemailvaliderror!,
                                                  textAlign: TextAlign.left,
                                                  style: const TextStyle(
                                                    color: Colors.red,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        SizedBox(
                                          height:
                                              controller.loginemailvaliderror !=
                                                      null
                                                  ? 10
                                                  : 20,
                                        ),
                                        Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7)),
                                          elevation: 10,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 253, 253, 252),
                                                borderRadius:
                                                    BorderRadius.circular(7)),
                                            height: 60,
                                            child: Focus(
                                              onFocusChange: (value) {
                                                // gcontroller.onfocuschange(
                                                //     value: value,
                                                //     searchtext: searchcontroller.text);
                                              },
                                              child: TextFormField(
                                                keyboardType: TextInputType
                                                    .visiblePassword,
                                                controller: passwordcontroller,
                                                obscureText: controller
                                                    .obscureTextPassword,
                                                onEditingComplete: () {},
                                                // controller: searchcontroller,
                                                onChanged: ((value) {}),
                                                decoration: InputDecoration(
                                                    suffixIcon: GestureDetector(
                                                      onTap: controller
                                                          .toggleSignup,
                                                      child: Icon(
                                                        controller.obscureTextPassword
                                                            ? FontAwesomeIcons
                                                                .eye
                                                            : FontAwesomeIcons
                                                                .eyeSlash,
                                                        size: 15.0,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    contentPadding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                            vertical: 25.0,
                                                            horizontal: 10.0),
                                                    prefixIcon:
                                                        const Icon(Icons.lock),
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(7)),
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
                                            context.router
                                                .push(ForgetPasswordPage());
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
                                                password:
                                                    passwordcontroller.text);
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                color: signInButton,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Padding(
                                              padding:
                                                  EdgeInsets.only(top: 6.0),
                                              child: Text(
                                                'Log In',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w400),
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
                                        FittedBox(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'Don\'t have an account? ',
                                              ),
                                              TextButton(
                                                  onPressed: () {
                                                    context.router.push(
                                                        CreateAccountPage());
                                                  },
                                                  child: const Text(
                                                      'Create Account'))
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                              // Container(
                              //   width: MediaQuery.of(context).size.width,
                              //   decoration: const BoxDecoration(
                              //     color: layerOneBg,
                              //     borderRadius: BorderRadius.only(
                              //         topLeft: Radius.circular(60.0),
                              //         bottomRight: Radius.circular(60.0)),
                              //   ),
                              //   child: Padding(
                              //     padding:
                              //         const EdgeInsets.only(left: 30, top: 20),
                              //     child: Container(
                              //       width: MediaQuery.of(context).size.width,
                              //       decoration: const BoxDecoration(
                              //         color: layerTwoBg,
                              //         borderRadius: BorderRadius.only(
                              //           topLeft: Radius.circular(60.0),
                              //           bottomRight: Radius.circular(60.0),
                              //           bottomLeft: Radius.circular(60.0),
                              //         ),
                              //       ),
                              //       child:
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        );
      }),
    );
  }
}
