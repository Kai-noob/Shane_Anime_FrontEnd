import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../home/home_screen.dart';

import '../library/library_screen.dart';
import '../profile/profile_screen.dart';
import '../upcoming/upcoming_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  final List<Widget> _pages = [
    const HomeScreen(),
    const UpcomingScreen(),
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
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/logo/home.svg",
                color: Colors.white,
                height: 22.h,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/logo/upcoming.svg",
                color: Colors.white,
                height: 22.h,
              ),
              label: "Coming"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/logo/library.svg",
                color: Colors.white,
                height: 22.h,
              ),
              label: "Library"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/logo/more.svg",
                color: Colors.white,
                height: 22.h,
              ),
              label: "More"),
        ],
      ),
    );
  }
}
