import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text(
              "Hi 👋🏻",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Text("Welcome to Starbucks",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w900,
                ))
          ],
        ),
        Expanded(
          child: Image.asset("assets/starbucks_icon.png"),
        ),
      ],
    );
  }
}
