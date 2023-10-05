import 'package:flutter/material.dart';
import 'package:starbucks_flutter/screens/sign_up/controller/signup_page_controller.dart';

import '../../../../shared/components/sectionTitle.dart';
import 'input.dart';
import 'password_input.dart';

class SignInForm extends StatelessWidget {
  final SignUpPageController controller;

  const SignInForm({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: SectionTitle(title: "Login Details"),
        ),
        Input(
          controller: controller.emailController,
          label: "Email",
        ),
        PasswordInput(
          controller: controller.passwordController,
          label: "Password",
        ),
        PasswordInput(
          controller: controller.confirmPasswordController,
          label: "Confirm Password",
        ),
      ],
    );
  }
}
