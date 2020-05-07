import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//override some properties in the theme

ThemeData appTheme() {
  const _accentColor = Colors.amber;

  return ThemeData(
    primaryColor: Colors.indigo,
    canvasColor: Colors.indigoAccent.shade100,
    accentColor: _accentColor,
    textTheme: TextTheme(
      headline4: GoogleFonts.gloriaHallelujah(
        textStyle: TextStyle(
          color: Colors.indigo[900],
          fontWeight: FontWeight.bold,
          letterSpacing: 1.0,
        ),
      ),
      headline6: GoogleFonts.raleway(
        textStyle: TextStyle(
          color: _accentColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    iconTheme: IconThemeData(
      color: Colors.indigo[900],
      size: 32.0,
    ),
  );
}
