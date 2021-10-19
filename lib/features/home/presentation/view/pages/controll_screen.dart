import 'package:flutter/material.dart';

import 'package:ionicons/ionicons.dart';
import 'package:movie_app/features/favourite/presentation/view/pages/favourite_screen.dart';
import 'package:movie_app/features/home/presentation/view/pages/home/home_screen.dart';
import 'package:movie_app/features/userAccount/presentation/pages/user_account_screen.dart';

import '../../../../../core/services/navigation_service.dart';

class ControlView extends StatefulWidget {
  const ControlView({Key? key}) : super(key: key);

  @override
  State<ControlView> createState() => _ControlViewState();
}

class _ControlViewState extends State<ControlView> {
  List<Widget> _pages = [HomeScreen(), FavouriteScreen(), UserAccountScreen()];
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        elevation: 0.0,
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(Ionicons.home),
              icon: Icon(Ionicons.home_outline),
              label: "Comic"),
          BottomNavigationBarItem(
              activeIcon: Icon(Ionicons.layers),
              icon: Icon(Ionicons.layers_outline),
              label: "Search"),
          BottomNavigationBarItem(
              activeIcon: Icon(Ionicons.person),
              icon: Icon(Ionicons.person_outline),
              label: "Account"),
        ],
      ),
    );
  }
}
