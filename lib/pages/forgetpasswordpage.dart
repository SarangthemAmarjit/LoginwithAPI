import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:logindemo/config.dart';
import 'package:logindemo/controller/tapcontroller.dart';

class ForgetPasswordPage extends StatelessWidget {
  ForgetPasswordPage({super.key});

  TextEditingController forgetmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    GetxTapController controller = Get.put(GetxTapController(context: context));
    return Scaffold(
      body: GetBuilder<GetxTapController>(builder: (_) {
        return SafeArea(
            child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/primaryBg.png'),
            fit: BoxFit.cover,
          )),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                'Reset Password Form',
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
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          controller.isemailvalid
                              ? 'New Password'
                              : 'Forget Password',
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
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
                                  color:
                                      const Color.fromARGB(255, 253, 253, 252),
                                  borderRadius: BorderRadius.circular(7)),
                              height: 43,
                              child: Focus(
                                onFocusChange: (value) {
                                  // gcontroller.onfocuschange(
                                  //     value: value,
                                  //     searchtext: searchcontroller.text);
                                },
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,

                                  onEditingComplete: () {},
                                  // controller: searchcontroller,
                                  onChanged: ((value) {}),
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.only(top: 7),
                                      prefixIcon: const Icon(Icons.person),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                      hintText: 'Enter Userid or Email',
                                      hintStyle:
                                          const TextStyle(color: Colors.grey)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        controller.isemailvalid
                            ? Padding(
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
                                        controller: forgetmail,
                                        keyboardType:
                                            TextInputType.emailAddress,

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
                              )
                            : const SizedBox(),
                        GestureDetector(
                          onTap: () {
                            controller.forgetpasswordcheckmail(
                                email: forgetmail.text);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: signInButton,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Padding(
                                padding: EdgeInsets.only(top: 6.0),
                                child: Text(
                                  'Reset Password',
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
        ));
      }),
    );
  }
}
