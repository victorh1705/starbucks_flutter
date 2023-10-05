import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:starbucks_flutter/providers/providers.dart';
import 'firebase_options.dart';

import 'package:starbucks_flutter/screens/allDone.dart';
import 'package:starbucks_flutter/screens/login_page/page/login_page.dart';
import 'package:starbucks_flutter/screens/singIn.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
      providers: AppProvider.provider,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MaterialColor getMaterialColor(Color color) {
      final int red = color.red;
      final int green = color.green;
      final int blue = color.blue;

      final Map<int, Color> shades = {
        50: Color.fromRGBO(red, green, blue, .1),
        100: Color.fromRGBO(red, green, blue, .2),
        200: Color.fromRGBO(red, green, blue, .3),
        300: Color.fromRGBO(red, green, blue, .4),
        400: Color.fromRGBO(red, green, blue, .5),
        500: Color.fromRGBO(red, green, blue, .6),
        600: Color.fromRGBO(red, green, blue, .7),
        700: Color.fromRGBO(red, green, blue, .8),
        800: Color.fromRGBO(red, green, blue, .9),
        900: Color.fromRGBO(red, green, blue, 1),
      };

      return MaterialColor(color.value, shades);
    }

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: getMaterialColor(Colors.green[900]!),
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.all(16.0),
          labelStyle: TextStyle(
            color: Colors.black,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: LoginPage.route,
      routes: {
        SingIn.route: (context) => const SingIn(),
        AllDone.route: (context) => const AllDone(),
        LoginPage.route: (context) => const LoginPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingIn(),
      ),
    );
  }
}
