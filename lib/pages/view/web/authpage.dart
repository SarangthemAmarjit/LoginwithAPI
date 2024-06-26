import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logindemo/config.dart';

import 'package:logindemo/router/router.gr.dart';

@RoutePage()
class WebViewAuthPage extends StatelessWidget {
  const WebViewAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/auth.jpg',
              ),
              fit: BoxFit.cover,
              opacity: 0.6)),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 30, right: 100),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.white,
                elevation: 10,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/adminok1.png',
                        height: 200,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                        onTap: () async {
                          context.router.push(LoginPage());
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 10,
                          child: Container(
                              height: 45,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 53, 47, 131),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Padding(
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Login or Register using Email",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.phone_android,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          context.router.push(AdminloginPage());
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 10,
                          child: Container(
                              height: 45,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 53, 47, 131),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Padding(
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Login as ADMIN",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.admin_panel_settings,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    )

        //  Row(
        //   children: [
        //     Expanded(
        //         flex: 1,
        //         child: Container(
        //           width: MediaQuery.of(context).size.width,
        //           height: MediaQuery.of(context).size.height,
        //           decoration: const BoxDecoration(
        //               image: DecorationImage(
        //             image: AssetImage(
        //               'assets/images/auth.jpg',
        //             ),
        //             fit: BoxFit.cover,
        //           )),
        //         )),
        //     Expanded(
        //       flex: 1,
        //       child: SizedBox(
        //         width: MediaQuery.of(context).size.width,
        //         height: MediaQuery.of(context).size.height,
        //         child: Column(
        //           children: [
        //             const SizedBox(
        //               height: 40,
        //             ),
        //             const Text(
        //               'LOGIN DEMO APP',
        //               style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        //             ),
        //             const SizedBox(
        //               height: 100,
        //             ),
        //             Card(
        //               shape: RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(10)),
        //               color: Colors.white,
        //               elevation: 10,
        //               child: Padding(
        //                 padding: const EdgeInsets.symmetric(
        //                     horizontal: 20, vertical: 20),
        //                 child: Column(
        //                   children: [
        //                     Image.asset(
        //                       'assets/images/adminok1.png',
        //                       height: 200,
        //                     ),
        //                     const SizedBox(
        //                       height: 50,
        //                     ),
        //                     GestureDetector(
        //                       onTap: () async {
        //                         context.router.push(LoginPage());
        //                       },
        //                       child: Card(
        //                         shape: RoundedRectangleBorder(
        //                             borderRadius: BorderRadius.circular(10)),
        //                         elevation: 10,
        //                         child: Container(
        //                             height: 45,
        //                             width: 300,
        //                             decoration: BoxDecoration(
        //                                 color: signInButton,
        //                                 borderRadius: BorderRadius.circular(10)),
        //                             child: const Padding(
        //                               padding: EdgeInsets.all(5),
        //                               child: Row(
        //                                 mainAxisAlignment:
        //                                     MainAxisAlignment.center,
        //                                 children: [
        //                                   Text("Login or Register using Email",
        //                                       style: TextStyle(
        //                                           fontWeight: FontWeight.bold,
        //                                           color: Colors.white)),
        //                                   SizedBox(
        //                                     width: 10,
        //                                   ),
        //                                   Icon(
        //                                     Icons.phone_android,
        //                                     color: Colors.white,
        //                                   )
        //                                 ],
        //                               ),
        //                             )),
        //                       ),
        //                     ),
        //                     const SizedBox(
        //                       height: 20,
        //                     ),
        //                     GestureDetector(
        //                       onTap: () {
        //                         context.router.push(AdminloginPage());
        //                       },
        //                       child: Card(
        //                         shape: RoundedRectangleBorder(
        //                             borderRadius: BorderRadius.circular(10)),
        //                         elevation: 10,
        //                         child: Container(
        //                             height: 45,
        //                             width: 300,
        //                             decoration: BoxDecoration(
        //                                 color: signInButton,
        //                                 borderRadius: BorderRadius.circular(10)),
        //                             child: const Padding(
        //                               padding: EdgeInsets.all(5),
        //                               child: Row(
        //                                 mainAxisAlignment:
        //                                     MainAxisAlignment.center,
        //                                 children: [
        //                                   Text("Login as ADMIN",
        //                                       style: TextStyle(
        //                                           fontWeight: FontWeight.bold,
        //                                           color: Colors.white)),
        //                                   SizedBox(
        //                                     width: 10,
        //                                   ),
        //                                   Icon(
        //                                     Icons.admin_panel_settings,
        //                                     color: Colors.white,
        //                                   )
        //                                 ],
        //                               ),
        //                             )),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        );
  }
}
