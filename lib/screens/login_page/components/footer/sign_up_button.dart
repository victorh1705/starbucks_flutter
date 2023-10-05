import 'package:flutter/material.dart';
import 'package:starbucks_flutter/screens/login_page/controller/login_page_controller.dart';
import 'package:starbucks_flutter/screens/sign_up/pages/sign_up_pages.dart';

class SignUpButton extends StatelessWidget {
  final LoginPageController controller;

  const SignUpButton({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          "Don’t have an account?",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, SignUpPages.route);
          },
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
