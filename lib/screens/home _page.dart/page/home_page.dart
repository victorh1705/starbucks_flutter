import 'package:flutter/material.dart';
import 'package:starbucks_flutter/screens/home%20_page.dart/components/my_wallet.dart';
import 'package:starbucks_flutter/screens/home%20_page.dart/controller/home_page_controller.dart';

import '../components/header.dart';
import '../components/my_balance.dart';

class HomePage extends StatelessWidget {
  static String route = "/home";

  final HomePageController controller;

  const HomePage({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Header(controller: controller),
            MyWallet(controller: controller),
            Image.asset(
              "assets/home/card02.png",
              width: mediaQuery.size.width * 0.95,
            ),
            MyBalance(mediaQuery: mediaQuery),
            const Text('You are logged in'),
            TextButton(
              onPressed: controller.logout,
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
