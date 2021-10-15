import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../../core/services/navigation_service.dart';

class ControlView extends StatelessWidget {
  const ControlView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(
      init: NavigationController(),
      builder: (controller) => Scaffold(
        body: controller.currentScreen,
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          iconSize: 25,
          elevation: 0.0,
          currentIndex: controller.navigatorIndex,
          onTap: (index) {
            controller.changeCurrentScreen(index);
          },
          items: const [
            BottomNavigationBarItem(
                activeIcon: Icon(Ionicons.home),
                icon: Icon(Ionicons.home_outline),
                label: "Comic"),
            BottomNavigationBarItem(
                activeIcon: Icon(Ionicons.search),
                icon: Icon(Ionicons.search_outline),
                label: "Search"),
            BottomNavigationBarItem(
                activeIcon: Icon(Ionicons.heart),
                icon: Icon(Ionicons.heart_outline),
                label: "Favourite"),
            BottomNavigationBarItem(
                activeIcon: Icon(Ionicons.person),
                icon: Icon(Ionicons.person_outline),
                label: "Account"),
          ],
        ),
      ),
    );
  }
}
