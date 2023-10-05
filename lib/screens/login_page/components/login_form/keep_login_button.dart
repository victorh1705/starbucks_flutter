import 'package:flutter/material.dart';
import 'package:starbucks_flutter/screens/login_page/controller/login_page_controller.dart';

class KeepLoginButton extends StatelessWidget {
  final LoginPageController controller;

  const KeepLoginButton({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // TODO: modify this checkbox
        Checkbox(
          value: controller.keepMeLoggedIn,
          onChanged: (value) {
            controller.toggleKeepMeLoggedIn();
          },
        ),
        const Text(
          "Keep me logged in",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
