import 'package:flutter/material.dart';

class Themes {
  static final ThemeData dark = ThemeData(
      fontFamily: "MyFont",
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black, selectedItemColor: Color(0xFF188DFA)),
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.black,
      backgroundColor: Colors.black,
      colorScheme: const ColorScheme.dark(),
      appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
      iconTheme: const IconThemeData(color: Colors.white));
}
