import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/presentation/home/home_screen.dart';

import 'package:movie_app/presentation/library/library_screen.dart';
import 'package:movie_app/presentation/profile/profile_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  final List<Widget> _pages = [
    const HomeScreen(),
    const LibraryScreen(),
    const ProfileScreen(),
  ];

  int _currrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageTransitionSwitcher(
          duration: const Duration(milliseconds: 400),
          transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
            return FadeThroughTransition(
                secondaryAnimation: secondaryAnimation,
                animation: primaryAnimation,
                child: child);
          },
          child: _pages[_currrentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currrentIndex,
        onTap: (value) {
          setState(() {
            _currrentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Ionicons.home_outline), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.layers_outline), label: "Library"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.menu_outline), label: "More"),
        ],
      ),
    );
  }
}
