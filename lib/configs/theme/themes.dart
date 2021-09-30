import 'package:flutter/material.dart';

class Themes {
  static final ThemeData dark = ThemeData(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.deepOrangeAccent),
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.black,
      colorScheme: ColorScheme.dark(),
      textTheme: ThemeData.dark().textTheme,
      appBarTheme: AppBarTheme(backgroundColor: Colors.black),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.white,
      ),
      iconTheme: IconThemeData(color: Colors.white));

  static final ThemeData light = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.white,
      colorScheme:
          ColorScheme.light(primary: Colors.white, onPrimary: Colors.black),
      // appBarTheme: AppBarTheme(backgroundColor: Colors.white),
      iconTheme: IconThemeData(color: Colors.black),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.deepOrangeAccent));
}
