import 'package:flutter/material.dart';
import 'package:starbucks_flutter/screens/allDone.dart';
import 'package:starbucks_flutter/screens/singIn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: SingIn.route,
      routes: {
        SingIn.route: (context) => const SingIn(),
        AllDone.route: (context) => const AllDone(),
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
