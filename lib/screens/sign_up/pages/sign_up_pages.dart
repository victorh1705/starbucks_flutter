import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starbucks_flutter/screens/sign_up/components/pagination.dart';
import 'package:starbucks_flutter/screens/sign_up/components/sign_up_form/card_form.dart';
import 'package:starbucks_flutter/screens/sign_up/components/sign_up_form/sign_in_form.dart';
import 'package:starbucks_flutter/screens/sign_up/controller/signup_page_controller.dart';

import '../components/header.dart';

class SignUpPages extends StatelessWidget {
  static String route = "/singIn";

  const SignUpPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SignUpPageController controller =
        Provider.of<SignUpPageController>(context);

    final ThemeData theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Pagination(),
                const Header(),
                SignInForm(controller: controller),
                CardForm(controller: controller),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox.shrink(),
                      InkWell(
                        onTap: () {
                          // controller.nextPage();
                          print("object");
                        },
                        child: Container(
                          width: 100,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: theme.primaryColor,
                          ),
                          child: const Center(
                            child: Text(
                              "Join now",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
