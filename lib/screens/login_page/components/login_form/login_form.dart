import 'package:flutter/material.dart';
import 'package:starbucks_flutter/screens/login_page/components/login_form/email_input.dart';
import 'package:starbucks_flutter/screens/login_page/components/login_form/forgot_password_button.dart';
import 'package:starbucks_flutter/screens/login_page/components/login_form/keep_login_button.dart';
import 'package:starbucks_flutter/screens/login_page/components/login_form/login_button.dart';
import 'package:starbucks_flutter/screens/login_page/components/login_form/password_input.dart';

import '../../controller/login_page_controller.dart';

class LoginForm extends StatelessWidget {
  final LoginPageController controller;

  const LoginForm({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
      child: Column(
        children: <Widget>[
          EmailInput(controller: controller),
          PasswordInput(controller: controller),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              KeepLoginButton(controller: controller),
              const ForgotPasswordButton(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: LoginButton(controller: controller),
          ),
        ],
      ),
    );
  }
}
