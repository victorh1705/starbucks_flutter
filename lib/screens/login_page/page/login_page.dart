import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starbucks_flutter/screens/login_page/components/footer/footer.dart';
import 'package:starbucks_flutter/screens/login_page/components/header.dart';
import 'package:starbucks_flutter/screens/login_page/components/login_form/login_form.dart';
import 'package:starbucks_flutter/screens/login_page/components/promotions.dart';
import 'package:starbucks_flutter/screens/login_page/controller/login_page_controller.dart';

class LoginPage extends StatelessWidget {
  static String route = "/login";

  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginPageController controller =
        Provider.of<LoginPageController>(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Header(),
              const Promotions(),
              LoginForm(controller: controller),
              Footer(controller: controller),
            ],
          ),
        ),
      ),
    );
  }
}
