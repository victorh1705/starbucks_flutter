import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String label;
  final String helperText;
  final TextEditingController controller;

  const Input({
    Key? key,
    this.label = '',
    this.helperText = '',
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: label,
        helperText: helperText,
      ),
    );
  }
}
