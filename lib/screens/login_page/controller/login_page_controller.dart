import 'package:flutter/material.dart';

class LoginPageController extends ChangeNotifier {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool keepMeLoggedIn = false;

  void login() {
    print(
        'email: ${emailController.text} \t password: ${passwordController.text}');
  }

  void toggleKeepMeLoggedIn() {
    keepMeLoggedIn = !keepMeLoggedIn;
    notifyListeners();
  }

  void loginWithFacebook() {
    print('login with facebook');
  }

  void loginWithGoogle() {
    print('login with google');
  }

  void goToSignUp() {
    print('go to sign up');
  }
}
