import 'package:flutter/material.dart';

class Themes {
  static final ThemeData dark = ThemeData(
      fontFamily: "MyFont",
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xff212121),
          selectedItemColor: Color(0xFF188DFA)),
      scaffoldBackgroundColor: Color(0xff212121),
      primaryColor: Color(0xff212121),
      backgroundColor: Color(0xff212121),
      colorScheme: const ColorScheme.dark(),
      appBarTheme: const AppBarTheme(backgroundColor: Color(0xff212121)),
      iconTheme: const IconThemeData(color: Colors.white));
}
