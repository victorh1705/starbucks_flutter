import 'package:flutter/material.dart';
import 'package:starbucks_flutter/components/header.dart';
import 'package:starbucks_flutter/components/pagination.dart';

import '../components/sectionTitle.dart';

class SingIn extends StatelessWidget {
  const SingIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Pagination(),
          Header(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: SectionTitle(title: "Login Details"),
          ),
          Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Confirm password',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: SectionTitle(title: "Register your starbucks card"),
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Card Number',
              labelStyle: TextStyle(
                color: Colors.black,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              helperText: "No spaces or dashes",
            ),
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Security Code',
              labelStyle: TextStyle(
                color: Colors.black,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              helperText:
                  "Scratch off the hidden portion at the back of your card",
            ),
          ),
        ],
      ),
    );
  }
}

class _Pagination extends StatelessWidget {
  const _Pagination({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
            ),
            child: const Icon(Icons.chevron_left),
          ),
          const Text(
            "Next",
            style: TextStyle(
              color: Colors.green,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
