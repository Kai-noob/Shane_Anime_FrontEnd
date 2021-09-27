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
        theme: ThemeData(primarySwatch: Colors.red, fontFamily: "MyFont"),
        home: const NavigationScreen());
  }
}
