import 'package:flutter/material.dart';
import 'package:starbucks_flutter/screens/sign_up/controller/signup_page_controller.dart';
import 'package:starbucks_flutter/shared/components/sectionTitle.dart';

import 'input.dart';
import 'password_input.dart';

class CardForm extends StatelessWidget {
  final SignUpPageController controller;

  const CardForm({
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
          child: SectionTitle(title: "Register your starbucks card"),
        ),
        Input(
          controller: controller.cardNumberController,
          label: "Card Number",
          helperText: "No spaces or dashes",
        ),
        PasswordInput(
          controller: controller.securityNumberController,
          label: "Security Code",
          helperText: "Scratch off the hidden portion at the back of your card",
        ),
      ],
    );
  }
}
