import 'package:flutter/material.dart';
import 'package:movie_app/features/favourite/presentation/pages/favourite_screen.dart';
import 'package:movie_app/features/genries/presentation/pages/genries_screen.dart';

import 'package:movie_app/features/home/presentation/pages/home_screen.dart';
import 'package:movie_app/features/login/presentation/pages/user_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final List<Widget> _pages = [
    const HomeScreen(),
    const GenriesScreen(),
    const FavouriteScreen(),
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_rounded), label: "Genres"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: "Favourite"),
        ],
      ),
    );
  }
}
