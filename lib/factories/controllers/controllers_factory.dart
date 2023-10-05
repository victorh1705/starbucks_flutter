import 'package:starbucks_flutter/factories/services/services_factory.dart';
import 'package:starbucks_flutter/screens/home%20_page.dart/controller/home_page_controller.dart';
import 'package:starbucks_flutter/screens/login_page/controller/login_page_controller.dart';
import 'package:starbucks_flutter/screens/sign_up/controller/signup_page_controller.dart';

class ControllersFactory {
  static LoginPageController createLoginPageController() {
    return LoginPageController(
      ServiceFactory.createAuthService(),
    );
  }

  static SignUpPageController createSignUpPageController() {
    return SignUpPageController(
      ServiceFactory.createAuthService(),
    );
  }

  static HomePageController createHomePageController() {
    return HomePageController(
      ServiceFactory.createAuthService(),
    );
  }
}
