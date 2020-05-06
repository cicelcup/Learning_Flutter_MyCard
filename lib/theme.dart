import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//override some properties in the theme

ThemeData appTheme() {
  const _primaryColor = Colors.indigo;
  const _accentColor = Colors.amber;

  return ThemeData(
    primaryColor: _primaryColor,
    accentColor: _accentColor,
    textTheme: TextTheme(
      headline5: GoogleFonts.gloriaHallelujah(
        textStyle: TextStyle(
          color: _primaryColor,
          fontWeight: FontWeight.bold,
          letterSpacing: 4.0,
        ),
      ),
      headline6: GoogleFonts.raleway(
        textStyle: TextStyle(
          color: _accentColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
