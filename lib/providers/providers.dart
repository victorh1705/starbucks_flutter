import 'package:provider/provider.dart';
import 'package:starbucks_flutter/factories/controllers/controllers_factory.dart';
import 'package:starbucks_flutter/screens/home%20_page.dart/controller/home_page_controller.dart';
import 'package:starbucks_flutter/screens/login_page/controller/login_page_controller.dart';
import 'package:starbucks_flutter/screens/sign_up/controller/signup_page_controller.dart';

class AppProvider {
  static final provider = [
    ChangeNotifierProvider<LoginPageController>(
      create: (context) => ControllersFactory.createLoginPageController(),
    ),
    ChangeNotifierProvider<SignUpPageController>(
      create: (context) => ControllersFactory.createSignUpPageController(),
    ),
    ChangeNotifierProvider<HomePageController>(
      create: (context) => ControllersFactory.createHomePageController(),
    ),
  ];
}
