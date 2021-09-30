import 'package:flutter/material.dart';

class Themes {
  static final ThemeData dark = ThemeData(
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.deepOrangeAccent),
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.black,
      backgroundColor: Colors.black,
      colorScheme: const ColorScheme.dark(),
      textTheme: ThemeData.dark().textTheme,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.white,
      ),
      iconTheme: const IconThemeData(color: Colors.white));

  static final ThemeData light = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      backgroundColor: Colors.white,
      primaryColor: Colors.white,
      colorScheme: const ColorScheme.light(
          primary: Colors.white, onPrimary: Colors.black),
      // appBarTheme: AppBarTheme(backgroundColor: Colors.white),
      iconTheme: const IconThemeData(color: Colors.black),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.deepOrangeAccent));
}
