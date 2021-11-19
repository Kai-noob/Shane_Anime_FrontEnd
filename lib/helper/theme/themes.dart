import 'package:flutter/material.dart';

class Themes {
  static final ThemeData dark = ThemeData(
      fontFamily: "MyFont",
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF2F323E),
          selectedItemColor: Color(0xFFDB3C0C)),
      scaffoldBackgroundColor: const Color(0xFF2F323E),
      primaryColor: const Color(0xFF2F323E),
      backgroundColor: const Color(0xFF2F323E),
      colorScheme: const ColorScheme.dark(primary: Colors.white70),
      appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF2F323E)),
      iconTheme: const IconThemeData(color: Colors.white));
}
