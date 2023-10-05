import 'package:flutter/material.dart';
import 'package:starbucks_flutter/screens/login_page/components/footer/login_with_facebook_button.dart';
import 'package:starbucks_flutter/screens/login_page/components/footer/login_with_google_button.dart';
import 'package:starbucks_flutter/screens/login_page/components/footer/sign_up_button.dart';
import 'package:starbucks_flutter/screens/login_page/controller/login_page_controller.dart';

class Footer extends StatelessWidget {
  final LoginPageController controller;

  const Footer({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: Colors.black),
                  width: 102,
                  height: 1,
                ),
                const Text(
                  "OR",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.black),
                  width: 102,
                  height: 1,
                ),
              ],
            ),
          ),
          LoginWithFacebookButton(controller: controller),
          const SizedBox(height: 20),
          LoginWithGoogleButton(controller: controller),
          const SizedBox(height: 20),
          SignUpButton(controller: controller),
        ],
      ),
    );
  }
}
