import 'package:flutter/material.dart';

class Themes {
  static final ThemeData dark = ThemeData(
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.deepPurpleAccent),
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.black,
      backgroundColor: Colors.black,
      colorScheme: const ColorScheme.dark(),
      textTheme: ThemeData.dark().textTheme,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.white,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.white));

  static final ThemeData light = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      backgroundColor: Colors.white,
      primaryColor: Colors.white,
      colorScheme: const ColorScheme.light(
          primary: Colors.white, onPrimary: Colors.black),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.black),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.black),
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.deepPurpleAccent));
}

const String kcolor = "0xff491be0";
