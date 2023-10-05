import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starbucks_flutter/providers/providers.dart';
import 'package:starbucks_flutter/screens/all_done/all_done.dart';
import 'package:starbucks_flutter/screens/home%20_page.dart/controller/home_page_controller.dart';
import 'package:starbucks_flutter/screens/home%20_page.dart/page/home_page.dart';
import 'package:starbucks_flutter/screens/login_page/controller/login_page_controller.dart';
import 'package:starbucks_flutter/screens/login_page/page/login_page.dart';
import 'package:starbucks_flutter/screens/sign_up/pages/sign_up_pages.dart';
import 'package:starbucks_flutter/shared/services/auth_service.dart';
import 'package:starbucks_flutter/shared/services/auth_service_firebase.dart';
import 'package:starbucks_flutter/utils/custom_theme.dart';

import 'firebase_options.dart';

void main() async {
  final AuthService authService = AuthServiceFirebase();

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
      providers: AppProvider.provider,
      child: MyApp(
        authService: authService,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final AuthService authService;

  const MyApp({super.key, required this.authService});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final LoginPageController loginPageController =
        Provider.of<LoginPageController>(context);

    final HomePageController homePageController =
        Provider.of<HomePageController>(context);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.getTheme(),
      home: StreamBuilder(
        stream: authService.onAuthStateChanged,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active &&
              snapshot.hasData) {
            return HomePage(
              controller: homePageController,
            );
          } else {
            return LoginPage(
              controller: loginPageController,
            );
          }
        },
      ),
      // initialRoute: LoginPage.route,
      routes: {
        SignUpPages.route: (context) => const SignUpPages(),
        AllDone.route: (context) => const AllDone(),
        LoginPage.route: (context) =>
            LoginPage(controller: loginPageController),
        HomePage.route: (context) => HomePage(controller: homePageController),
      },
    );
  }
}
