import 'package:flutter/material.dart';

class AppColors {
  String kColor = "0xfffa411b";
}

class Themes {
  static final ThemeData dark = ThemeData(
      fontFamily: "MyFont",
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black, selectedItemColor: Color(0xfffa411b)),
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.black,
      backgroundColor: Colors.black,
      colorScheme: const ColorScheme.dark(),
      appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
      iconTheme: const IconThemeData(color: Colors.white));
}
