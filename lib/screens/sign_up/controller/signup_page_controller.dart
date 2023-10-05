import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:starbucks_flutter/shared/services/auth_service.dart';

class SignUpPageController extends ChangeNotifier {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController securityNumberController =
      TextEditingController();

  bool keepMeLoggedIn = false;

  AuthService<User> authService;

  SignUpPageController(
    this.authService,
  ) {}

  void login() async {
    await authService.signIn(
      emailController.text,
      passwordController.text,
    );
  }

  void logout() async {
    await authService.signOut();
  }

  void createUser() async {
    await authService.createUser(
      emailController.text,
      passwordController.text,
    );
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
    // Navigator.pushNamed(context, '/sign-up');
    print("object");
  }
}
