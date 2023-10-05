import 'package:flutter/material.dart';
import 'package:starbucks_flutter/screens/home%20_page.dart/controller/home_page_controller.dart';

class Header extends StatelessWidget {
  final HomePageController controller;

  const Header({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              controller.logout();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              child: const Icon(Icons.chevron_left),
            ),
          ),
          Center(
            child: Image.asset("assets/starbucks_icon.png"),
          ),
          const SizedBox.shrink(),
        ],
      ),
    );
  }
}
