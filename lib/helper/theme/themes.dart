import 'package:flutter/material.dart';

class Themes {
  static final ThemeData dark = ThemeData(
      fontFamily: "MyFont",
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF1C1D21), selectedItemColor: Colors.white),
      scaffoldBackgroundColor: const Color(0xFF1C1D21),
      primaryColor: const Color(0xFF1C1D21),
      backgroundColor: const Color(0xFF1C1D21),
      colorScheme: const ColorScheme.dark(primary: Colors.white),
      appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF1C1D21)),
      iconTheme: const IconThemeData(color: Colors.white));
}
