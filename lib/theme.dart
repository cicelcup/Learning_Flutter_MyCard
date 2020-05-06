import 'package:flutter/material.dart';
//override some properties in the theme

ThemeData appTheme() {
  return ThemeData(
    primaryColor: Colors.indigo,
    textTheme: TextTheme(
      headline5: TextStyle(
        color: Colors.indigo,
        fontWeight: FontWeight.bold,
        letterSpacing: 4.0,
      ),
    ),
  );
}
