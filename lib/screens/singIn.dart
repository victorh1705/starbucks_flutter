import 'package:flutter/material.dart';
import 'package:starbucks_flutter/utils/color+ext.dart';

import '../components/sectionTitle.dart';
import 'allDone.dart';

class SingIn extends StatelessWidget {
  static String route = "/singIn";

  const SingIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              _Pagination(),
              _Header(),
              _LoginForm(),
              _CardNumberForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Pagination extends StatelessWidget {
  const _Pagination({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
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
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, AllDone.route);
            },
            child: Text(
              "Next",
              style: TextStyle(
                color: CustomColors.greenDefault(),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

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

class _LoginForm extends StatelessWidget {
  const _LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 40.0),
          child: SectionTitle(title: "Login Details"),
        ),
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
    );
  }
}

class _CardNumberForm extends StatelessWidget {
  const _CardNumberForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 40.0),
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
    );
  }
}
