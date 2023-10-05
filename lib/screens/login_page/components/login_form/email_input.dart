import 'package:flutter/material.dart';
import 'package:starbucks_flutter/screens/login_page/controller/login_page_controller.dart';

class EmailInput extends StatelessWidget {
  final LoginPageController controller;

  const EmailInput({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.emailController,
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Email',
      ),
    );
  }
}
