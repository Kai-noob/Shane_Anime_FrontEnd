import 'package:flutter/material.dart';

import 'package:ionicons/ionicons.dart';
import '../../../../library/presentation/view/pages/library_screen.dart';
import 'home/home_screen.dart';
import '../../../../userAccount/presentation/pages/user_account_screen.dart';

class ControlView extends StatefulWidget {
  const ControlView({Key? key}) : super(key: key);

  @override
  State<ControlView> createState() => _ControlViewState();
}

class _ControlViewState extends State<ControlView> {
  final List<Widget> _pages = [
    HomeScreen(),
    const FavouriteScreen(),
    const UserAccountScreen()
  ];
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0.0,
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.layers), label: "Library"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
