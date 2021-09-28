import 'package:flutter/material.dart';
import 'package:movie_app/features/home/presentation/widgets/navigation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: const Color(0xff0f0f0d),
            appBarTheme: const AppBarTheme(backgroundColor: Color(0xff0f0f0d)),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                selectedItemColor: Colors.red,
                unselectedItemColor: Colors.white,
                selectedLabelStyle: TextStyle(color: Colors.white),
                backgroundColor: Color(0xff0f0f0d)),
            scaffoldBackgroundColor: const Color(0xff0f0f0d),
            fontFamily: "MyFont"),
        home: const NavigationScreen());
  }
}
