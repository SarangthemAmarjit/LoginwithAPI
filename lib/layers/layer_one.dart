import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logindemo/config.dart';

class LayerOne extends StatelessWidget {
  LayerOne({super.key});
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: layerOneBg,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60.0), bottomRight: Radius.circular(60.0)),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                      elevation: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 253, 253, 252),
                            borderRadius: BorderRadius.circular(7)),
                        height: 43,
                        child: Focus(
                          onFocusChange: (value) {
                            // gcontroller.onfocuschange(
                            //     value: value,
                            //     searchtext: searchcontroller.text);
                          },
                          child: TextFormField(
                            onEditingComplete: () {},
                            // controller: searchcontroller,
                            onChanged: ((value) {}),
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(top: 7),
                                prefixIcon: const Icon(Icons.person),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7)),
                                hintText: 'Enter Userid or Email',
                                hintStyle: const TextStyle(color: Colors.grey)),
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
                            color: const Color.fromARGB(255, 253, 253, 252),
                            borderRadius: BorderRadius.circular(7)),
                        height: 43,
                        child: Focus(
                          onFocusChange: (value) {
                            // gcontroller.onfocuschange(
                            //     value: value,
                            //     searchtext: searchcontroller.text);
                          },
                          child: TextFormField(
                            onEditingComplete: () {},
                            // controller: searchcontroller,
                            onChanged: ((value) {}),
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(top: 7),
                                prefixIcon: const Icon(Icons.security),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7)),
                                hintText: 'Enter Password',
                                hintStyle: const TextStyle(color: Colors.grey)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                            color: forgotPasswordText,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(
                          color: signInButton,
                          borderRadius: BorderRadius.circular(10)),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 59,
                          height: 48,
                          decoration: BoxDecoration(
                              border: Border.all(color: signInBox),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Image.asset(
                            'assets/images/icon_google.png',
                            width: 20,
                            height: 21,
                          ),
                        ),
                        const Text(
                          'or',
                          style: TextStyle(fontSize: 18, color: hintText),
                        ),
                        Container(
                          width: 59,
                          height: 48,
                          decoration: BoxDecoration(
                              border: Border.all(color: signInBox),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Image.asset(
                            'assets/images/icon_apple.png',
                            width: 20,
                            height: 21,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
