import 'package:flutter/material.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // TODO: navigate to forgot password page
        // Navigator.pushNamed(context, "/forgot-password")
        print("Forgot Password?");
      },
      child: const Text("Forgot Password?"),
    );
  }
}
