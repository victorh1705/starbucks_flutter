import 'package:flutter/material.dart';
import 'package:starbucks_flutter/screens/login_page/controller/login_page_controller.dart';

class PasswordInput extends StatefulWidget {
  final LoginPageController controller;

  const PasswordInput({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller.passwordController,
      obscureText: _isPasswordVisible,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _isPasswordVisible = !_isPasswordVisible;
            });
          },
          icon: Icon(
              _isPasswordVisible ? Icons.visibility : Icons.visibility_off),
        ),
        border: const UnderlineInputBorder(),
        labelText: 'Password',
      ),
    );
  }
}
