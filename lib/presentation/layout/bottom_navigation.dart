import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: TabBarView(
          children: [HomeScreen(), LibraryScreen(), ProfileScreen()],
        ),
        bottomNavigationBar: TabBar(
          indicatorColor: Colors.transparent,
          tabs: [
            Tab(
              icon: Icon(Ionicons.heart_circle_outline),
            ),
            Tab(
              icon: Icon(Ionicons.layers_outline),
            ),
            Tab(
              icon: Icon(Ionicons.list_outline),
            )
          ],
        ),
      ),
    );
  }
}
