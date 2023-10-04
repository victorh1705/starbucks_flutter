import 'package:flutter/material.dart';
import 'package:starbucks_flutter/utils/color+ext.dart';

class Login extends StatelessWidget {
  static String route = "/login";

  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const _Header(),
              _Banner(),
              _LoginForm(),
              _Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

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

class _Banner extends StatelessWidget {
  const _Banner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "Starbucks Promotion",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          height: 28,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 30,
              ),
              Image.asset(
                "assets/promotions01.png",
                width: 190,
                height: 136,
              ),
              Container(
                width: 30,
              ),
              Image.asset(
                "assets/promotions01.png",
                width: 190,
                height: 136,
              ),
              Container(
                width: 30,
              ),
              Image.asset(
                "assets/promotions01.png",
                width: 190,
                height: 136,
              ),
              Container(
                width: 30,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 19,
                height: 9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xaf00613a),
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Container(
                width: 9,
                height: 9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff979797),
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Container(
                width: 9,
                height: 9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff979797),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _LoginForm extends StatefulWidget {
  const _LoginForm({
    super.key,
  });

  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Email',
            ),
          ),
          TextFormField(
            obscureText: _isPasswordVisible,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
                icon: Icon(_isPasswordVisible
                    ? Icons.visibility
                    : Icons.visibility_off),
              ),
              border: const UnderlineInputBorder(),
              labelText: 'Password',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  // TODO: modify this checkbox
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text(
                    "Keep me logged in",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
      ),
      child: Column(
        children: <Widget>[
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).primaryColor,
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  child: Text(
                    "Login ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: Colors.black),
                  width: 102,
                  height: 1,
                ),
                const Text(
                  "OR",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.black),
                  width: 102,
                  height: 1,
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(CustomColors.blueFacebook()),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70),
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/facebook.png"),
                  const Text(
                    "Login with Facebook",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(70),
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/google.png"),
                  const Text(
                    "Login with Google",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Don’t have an account?",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
