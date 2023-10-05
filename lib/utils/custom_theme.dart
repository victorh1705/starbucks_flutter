import 'package:flutter/material.dart';
import 'package:starbucks_flutter/utils/color+ext.dart';

class CustomTheme {
  static ThemeData getTheme() {
    return ThemeData(
      primarySwatch: CustomColors.getMaterialColor(Colors.green[900]!),
      inputDecorationTheme: const InputDecorationTheme(
        contentPadding: EdgeInsets.all(16.0),
        labelStyle: TextStyle(
          color: Colors.black,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
