import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                "Good Morning 👋🏻",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Text("Welcome back!",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w900,
                  ))
            ],
          ),
          Container(
            decoration: const BoxDecoration(),
            child: Expanded(
              child: Image.asset("assets/starbucks_icon.png"),
            ),
          ),
        ],
      ),
    );
  }
}
