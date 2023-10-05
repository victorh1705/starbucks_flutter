
import 'package:flutter/material.dart';
import 'package:starbucks_flutter/screens/login_page/controller/login_page_controller.dart';

class LoginWithGoogleButton extends StatelessWidget {
  final LoginPageController controller;

  const LoginWithGoogleButton({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        controller.loginWithGoogle();
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
            ),
            borderRadius: BorderRadius.circular(70),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/google.png"),
            const Text(
              "Login with Google",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
