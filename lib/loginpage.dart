import 'package:flutter/material.dart';
import 'package:logindemo/layers/layer_one.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/primaryBg.png'),
          fit: BoxFit.cover,
        )),
        child: Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: 500,
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
                LayerOne(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
