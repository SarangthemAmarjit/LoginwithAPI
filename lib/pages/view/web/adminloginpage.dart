import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:logindemo/config.dart';
import 'package:logindemo/controller/tapcontroller.dart';

@RoutePage()
class WebViewAdminloginPage extends StatelessWidget {
  WebViewAdminloginPage({super.key});

  TextEditingController mailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    GetxTapController controller = Get.put(GetxTapController(context: context));
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<GetxTapController>(builder: (_) {
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/adminbg2.png'),
                fit: BoxFit.cover,
                opacity: 0.6),
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 100, right: 150),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(color: Colors.green)),
                shadowColor: Colors.green,
                borderOnForeground: true,
                elevation: 10,
                child: SizedBox(
                  width: 500,
                  // height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/admin2.png',
                        height: 150,
                      ),
                      const Text(
                        'ADMIN PANEL LOGIN',
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 103, 236, 216),
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 15),
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
                                          controller: mailcontroller,
                                          keyboardType:
                                              TextInputType.emailAddress,

                                          onEditingComplete: () {},
                                          // controller: searchcontroller,
                                          onChanged: ((value) {}),
                                          decoration: InputDecoration(
                                              hintText: 'Enter Userid or email',
                                              contentPadding:
                                                  const EdgeInsets.only(top: 7),
                                              prefixIcon:
                                                  const Icon(Icons.person),
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
                                          controller: passwordcontroller,
                                          keyboardType:
                                              TextInputType.visiblePassword,

                                          onEditingComplete: () {},
                                          // controller: searchcontroller,
                                          onChanged: ((value) {}),
                                          decoration: InputDecoration(
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
                                ),
                                GestureDetector(
                                  onTap: () {
                                    controller.adminlogin(
                                        email: mailcontroller.text,
                                        password: passwordcontroller.text);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
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
                      )
                    ],
                  ),
                ),

                // Container(
                //   decoration:
                //       BoxDecoration(borderRadius: BorderRadius.circular(15)),
                //   child: Row(
                //     children: [
                //       Expanded(
                //           flex: 1,
                //           child: Container(
                //               decoration: const BoxDecoration(
                //                 image: DecorationImage(
                //                   image:
                //                       AssetImage('assets/images/primaryBg.png'),
                //                   fit: BoxFit.cover,
                //                 ),
                //                 borderRadius: BorderRadius.only(
                //                     bottomLeft: Radius.circular(15),
                //                     topLeft: Radius.circular(15)),
                //               ),
                //               child: const Column(
                //                 children: [
                //                   SizedBox(
                //                     height: 100,
                //                   ),
                //                   Center(
                //                     child: Text(
                //                       'WELCOME TO ADMIN DASHBOARD PANEL',
                //                       textAlign: TextAlign.center,
                //                       style: TextStyle(
                //                           fontSize: 25, color: Colors.orange),
                //                       strutStyle: StrutStyle(
                //                         fontWeight: FontWeight.bold,
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ))),
                //       Expanded(
                //         flex: 1,
                //         child: SizedBox(
                //           width: MediaQuery.of(context).size.width,
                //           height: MediaQuery.of(context).size.height,
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               Image.asset(
                //                 'assets/images/admin2.png',
                //                 height: 150,
                //               ),
                //               const Text(
                //                 'ADMIN PANEL LOGIN',
                //                 style: TextStyle(
                //                     fontSize: 30,
                //                     color: Color.fromARGB(255, 103, 236, 216),
                //                     fontWeight: FontWeight.bold),
                //               ),
                //               Padding(
                //                 padding: const EdgeInsets.symmetric(
                //                     horizontal: 50, vertical: 15),
                //                 child: Card(
                //                   elevation: 10,
                //                   child: Container(
                //                     decoration: BoxDecoration(
                //                         color: Colors.white,
                //                         borderRadius: BorderRadius.circular(10)),
                //                     width: MediaQuery.of(context).size.width,
                //                     child: Padding(
                //                       padding: const EdgeInsets.only(bottom: 20),
                //                       child: Column(
                //                         children: [
                //                           const SizedBox(
                //                             height: 20,
                //                           ),
                //                           Padding(
                //                             padding: const EdgeInsets.symmetric(
                //                                 horizontal: 15, vertical: 20),
                //                             child: Card(
                //                               shape: RoundedRectangleBorder(
                //                                   borderRadius:
                //                                       BorderRadius.circular(7)),
                //                               elevation: 10,
                //                               child: Container(
                //                                 decoration: BoxDecoration(
                //                                     color: const Color.fromARGB(
                //                                         255, 253, 253, 252),
                //                                     borderRadius:
                //                                         BorderRadius.circular(7)),
                //                                 height: 43,
                //                                 child: Focus(
                //                                   onFocusChange: (value) {
                //                                     // gcontroller.onfocuschange(
                //                                     //     value: value,
                //                                     //     searchtext: searchcontroller.text);
                //                                   },
                //                                   child: TextFormField(
                //                                     controller: mailcontroller,
                //                                     keyboardType: TextInputType
                //                                         .emailAddress,

                //                                     onEditingComplete: () {},
                //                                     // controller: searchcontroller,
                //                                     onChanged: ((value) {}),
                //                                     decoration: InputDecoration(
                //                                         hintText:
                //                                             'Enter Userid or email',
                //                                         contentPadding:
                //                                             const EdgeInsets.only(
                //                                                 top: 7),
                //                                         prefixIcon: const Icon(
                //                                             Icons.person),
                //                                         border:
                //                                             OutlineInputBorder(
                //                                                 borderRadius:
                //                                                     BorderRadius
                //                                                         .circular(
                //                                                             7)),
                //                                         hintStyle:
                //                                             const TextStyle(
                //                                                 color:
                //                                                     Colors.grey)),
                //                                   ),
                //                                 ),
                //                               ),
                //                             ),
                //                           ),
                //                           Padding(
                //                             padding: const EdgeInsets.only(
                //                                 left: 15, right: 15, bottom: 15),
                //                             child: Card(
                //                               shape: RoundedRectangleBorder(
                //                                   borderRadius:
                //                                       BorderRadius.circular(7)),
                //                               elevation: 10,
                //                               child: Container(
                //                                 decoration: BoxDecoration(
                //                                     color: const Color.fromARGB(
                //                                         255, 253, 253, 252),
                //                                     borderRadius:
                //                                         BorderRadius.circular(7)),
                //                                 height: 43,
                //                                 child: Focus(
                //                                   onFocusChange: (value) {
                //                                     // gcontroller.onfocuschange(
                //                                     //     value: value,
                //                                     //     searchtext: searchcontroller.text);
                //                                   },
                //                                   child: TextFormField(
                //                                     controller:
                //                                         passwordcontroller,
                //                                     keyboardType: TextInputType
                //                                         .visiblePassword,

                //                                     onEditingComplete: () {},
                //                                     // controller: searchcontroller,
                //                                     onChanged: ((value) {}),
                //                                     decoration: InputDecoration(
                //                                         contentPadding:
                //                                             const EdgeInsets.only(
                //                                                 top: 7),
                //                                         prefixIcon: const Icon(
                //                                             Icons.lock),
                //                                         border:
                //                                             OutlineInputBorder(
                //                                                 borderRadius:
                //                                                     BorderRadius
                //                                                         .circular(
                //                                                             7)),
                //                                         hintText:
                //                                             'Enter Password',
                //                                         hintStyle:
                //                                             const TextStyle(
                //                                                 color:
                //                                                     Colors.grey)),
                //                                   ),
                //                                 ),
                //                               ),
                //                             ),
                //                           ),
                //                           GestureDetector(
                //                             onTap: () {
                //                               controller.adminlogin(
                //                                   email: mailcontroller.text,
                //                                   password:
                //                                       passwordcontroller.text);
                //                             },
                //                             child: Padding(
                //                               padding: const EdgeInsets.symmetric(
                //                                   horizontal: 20),
                //                               child: Container(
                //                                 width: MediaQuery.of(context)
                //                                     .size
                //                                     .width,
                //                                 height: 40,
                //                                 decoration: BoxDecoration(
                //                                     color: signInButton,
                //                                     borderRadius:
                //                                         BorderRadius.circular(
                //                                             10)),
                //                                 child: const Padding(
                //                                   padding:
                //                                       EdgeInsets.only(top: 6.0),
                //                                   child: Text(
                //                                     'Login',
                //                                     textAlign: TextAlign.center,
                //                                     style: TextStyle(
                //                                         color: Colors.white,
                //                                         fontSize: 18,
                //                                         fontWeight:
                //                                             FontWeight.w400),
                //                                   ),
                //                                 ),
                //                               ),
                //                             ),
                //                           ),
                //                         ],
                //                       ),
                //                     ),
                //                   ),
                //                 ),
                //               )
                //             ],
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
