import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    // primaryColor: const Color(0xff0f0f0d),
    tabBarTheme: TabBarTheme(labelColor: Colors.black),
    appBarTheme: AppBarTheme(
        color: Colors.deepOrangeAccent,

        // titleTextStyle: TextStyle(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.white)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(color: Colors.black),
        backgroundColor: Colors.white),
    scaffoldBackgroundColor: Colors.white,
  );
  static final dark = ThemeData.dark().copyWith(
    // primaryColor: const Color(0xff0f0f0d),
    tabBarTheme: TabBarTheme(labelColor: Colors.white),
    appBarTheme: const AppBarTheme(color: Color(0xff0f0f0d)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(color: Colors.white),
        backgroundColor: Color(0xff0f0f0d)),
    scaffoldBackgroundColor: const Color(0xff0f0f0d),
  );
}
