import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:logindemo/config.dart';
import 'package:logindemo/controller/tapcontroller.dart';

@RoutePage()
class CreateAccountPage extends StatelessWidget {
  CreateAccountPage({super.key});

  TextEditingController mailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController firstnamecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    GetxTapController controller = Get.put(GetxTapController(context: context));
    return Scaffold(
      body: GetBuilder<GetxTapController>(builder: (_) {
        return SingleChildScrollView(
          child: Container(
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
                          'Create Account',
                          style: TextStyle(
                              fontSize: 40,
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
                                child: Form(
                                  key: _formKey,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
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
                                          height: 43,
                                          child: Focus(
                                            onFocusChange: (value) {
                                              controller.firstnameonfocuschange(
                                                  value: value,
                                                  searchtext:
                                                      firstnamecontroller.text);
                                            },
                                            child: TextFormField(
                                              keyboardType: TextInputType.name,
                                              controller: firstnamecontroller,
                                              onEditingComplete: () {},
                                              // controller: searchcontroller,
                                              onChanged: ((value) {
                                                controller
                                                    .validatefirstname(value);
                                              }),
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets.only(
                                                          top: 7),
                                                  prefixIcon:
                                                      const Icon(Icons.person),
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  hintText: 'Enter First Name',
                                                  hintStyle: const TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 207, 207, 207))),
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (controller.firstnamevaliderror !=
                                          null)
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 1, left: 5),
                                          child: Row(
                                            children: [
                                              Text(
                                                controller.firstnamevaliderror!,
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
                                            controller.firstnamevaliderror !=
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
                                          height: 43,
                                          child: Focus(
                                            onFocusChange: (value) {
                                              controller.lastnameonfocuschange(
                                                  value: value,
                                                  searchtext:
                                                      lastnamecontroller.text);
                                            },
                                            child: TextFormField(
                                              keyboardType: TextInputType.name,
                                              controller: lastnamecontroller,
                                              onEditingComplete: () {},
                                              // controller: searchcontroller,
                                              onChanged: ((value) {
                                                controller
                                                    .validatelastname(value);
                                              }),
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets.only(
                                                          top: 7),
                                                  prefixIcon:
                                                      const Icon(Icons.person),
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  hintText: 'Enter Last Name',
                                                  hintStyle: const TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 207, 207, 207))),
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (controller.lastnamevaliderror != null)
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 1, left: 5),
                                          child: Row(
                                            children: [
                                              Text(
                                                controller.lastnamevaliderror!,
                                                textAlign: TextAlign.left,
                                                style: const TextStyle(
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      SizedBox(
                                        height: controller.lastnamevaliderror !=
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
                                          height: 43,
                                          child: Focus(
                                            onFocusChange: (value) {
                                              controller.emailonfocuschange(
                                                  value: value,
                                                  searchtext:
                                                      mailcontroller.text);
                                            },
                                            child: TextFormField(
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              controller: mailcontroller,
                                              onEditingComplete: () {},
                                              // controller: searchcontroller,
                                              onChanged: (value) {
                                                controller.validateEmail(value);
                                              },

                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets.only(
                                                          top: 7),
                                                  prefixIcon:
                                                      const Icon(Icons.email),
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  hintText:
                                                      'Enter Email Address',
                                                  hintStyle: const TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 207, 207, 207))),
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (controller.emailvaliderror != null)
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 1, left: 5),
                                          child: Row(
                                            children: [
                                              Text(
                                                controller.emailvaliderror!,
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
                                            controller.emailvaliderror != null
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
                                          height: 43,
                                          child: Focus(
                                            onFocusChange: (value) {
                                              controller.passwordonfocuschange(
                                                  value: value,
                                                  searchtext:
                                                      passwordcontroller.text);
                                            },
                                            child: TextFormField(
                                              obscureText: true,
                                              keyboardType:
                                                  TextInputType.visiblePassword,
                                              controller: passwordcontroller,
                                              obscuringCharacter: '*',

                                              onEditingComplete: () {},
                                              // controller: searchcontroller,
                                              onChanged: ((value) {
                                                controller
                                                    .validatepassword(value);
                                              }),
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets.only(
                                                          top: 7),
                                                  prefixIcon:
                                                      const Icon(Icons.lock),
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  hintText: 'Enter Password',
                                                  hintStyle: const TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 207, 207, 207))),
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (controller.passwordnamevaliderror !=
                                          null)
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 1, left: 5),
                                          child: Row(
                                            children: [
                                              Text(
                                                controller
                                                    .passwordnamevaliderror!,
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
                                            controller.passwordnamevaliderror !=
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
                                          height: 43,
                                          child: Focus(
                                            onFocusChange: (value) {
                                              controller.phoneonfocuschange(
                                                  value: value,
                                                  searchtext:
                                                      phonecontroller.text);
                                            },
                                            child: TextFormField(
                                              keyboardType:
                                                  TextInputType.number,
                                              controller: phonecontroller,
                                              onEditingComplete: () {},
                                              // controller: searchcontroller,
                                              onChanged: ((value) {
                                                controller
                                                    .validatephonenumber(value);
                                              }),
                                              // validator: (value) {
                                              //   if (value == null ||
                                              //       value.isEmpty) {
                                              //     return 'Please enter your phone number';
                                              //   }
                                              //   String pattern = r'^\d{10}$';
                                              //   if (!RegExp(pattern)
                                              //       .hasMatch(value)) {
                                              //     return 'Please enter a valid 10-digit phone number';
                                              //   }
                                              //   return null;
                                              // },
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets.only(
                                                          top: 7),
                                                  prefixIcon:
                                                      const Icon(Icons.call),
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  hintText:
                                                      'Enter Phone number',
                                                  hintStyle: const TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 207, 207, 207))),
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (controller.numbernamevaliderror !=
                                          null)
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 1, left: 5),
                                          child: Row(
                                            children: [
                                              Text(
                                                controller
                                                    .numbernamevaliderror!,
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
                                            controller.numbernamevaliderror !=
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
                                          height: 43,
                                          child: Focus(
                                            onFocusChange: (value) {
                                              controller.addressonfocuschange(
                                                  value: value,
                                                  searchtext:
                                                      addresscontroller.text);
                                            },
                                            child: TextFormField(
                                              keyboardType:
                                                  TextInputType.streetAddress,
                                              controller: addresscontroller,
                                              onEditingComplete: () {},
                                              // controller: searchcontroller,
                                              onChanged: ((value) {
                                                controller
                                                    .validateaddresss(value);
                                              }),
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets.only(
                                                          top: 7),
                                                  prefixIcon:
                                                      const Icon(Icons.place),
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  hintText: 'Enter Address',
                                                  hintStyle: const TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 207, 207, 207))),
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (controller.addressvaliderror != null)
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 1, left: 5),
                                          child: Row(
                                            children: [
                                              Text(
                                                controller.addressvaliderror!,
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
                                            controller.addressvaliderror != null
                                                ? 10
                                                : 20,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          if (controller.firstnamevaliderror == null &&
                                              controller.lastnamevaliderror ==
                                                  null &&
                                              controller.firstnamevaliderror ==
                                                  null &&
                                              controller.lastnamevaliderror ==
                                                  null &&
                                              controller.firstnamevaliderror ==
                                                  null &&
                                              controller.lastnamevaliderror ==
                                                  null) {
                                            if (firstnamecontroller
                                                    .text.isEmpty &&
                                                lastnamecontroller
                                                    .text.isEmpty &&
                                                mailcontroller.text.isEmpty &&
                                                passwordcontroller
                                                    .text.isEmpty &&
                                                phonecontroller.text.isEmpty &&
                                                addresscontroller
                                                    .text.isEmpty) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(const SnackBar(
                                                      backgroundColor:
                                                          Colors.red,
                                                      content: Text(
                                                        'All Fields Are Mandatory',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'KulimPark'),
                                                      )));
                                            } else {
                                              controller.createaccount(
                                                  email: mailcontroller.text,
                                                  firstname:
                                                      firstnamecontroller.text,
                                                  lastname:
                                                      lastnamecontroller.text,
                                                  address:
                                                      addresscontroller.text,
                                                  number: phonecontroller.text,
                                                  password:
                                                      passwordcontroller.text);
                                            }
                                          }
                                          // Process the data further if needed
                                        },
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: signInButton,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: const Padding(
                                            padding: EdgeInsets.only(top: 6.0),
                                            child: Text(
                                              'Create Account',
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'Already have an account? ',
                                          ),
                                          TextButton(
                                              onPressed: () {
                                                context.router
                                                    .replaceNamed('/');
                                              },
                                              child: const Text('Login'))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
