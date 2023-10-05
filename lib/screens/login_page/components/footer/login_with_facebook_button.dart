import 'package:flutter/material.dart';
import 'package:starbucks_flutter/screens/login_page/controller/login_page_controller.dart';
import 'package:starbucks_flutter/utils/color+ext.dart';

class LoginWithFacebookButton extends StatelessWidget {
  final LoginPageController controller;

  const LoginWithFacebookButton({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        controller.loginWithFacebook();
      },
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(CustomColors.blueFacebook()),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(70),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/facebook.png"),
            const Text(
              "Login with Facebook",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
