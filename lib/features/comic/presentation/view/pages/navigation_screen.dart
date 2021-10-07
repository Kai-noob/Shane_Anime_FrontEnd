import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'package:movie_app/features/comic/presentation/view/pages/home_screen.dart';
import 'package:movie_app/features/favourite/presentation/view/pages/favourite_screen.dart';

import 'genries_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final List<Widget> _pages = [
    const HomeScreen(),
    const GenriesScreen(),
    FavouriteScreen(),
    // const SettingsScreen()
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 22,
        elevation: 0.0,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(EvaIcons.bookOpen), label: "Comic"),
          BottomNavigationBarItem(icon: Icon(EvaIcons.grid), label: "Genres"),
          BottomNavigationBarItem(
              icon: Icon(EvaIcons.heart), label: "Favourite"),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
