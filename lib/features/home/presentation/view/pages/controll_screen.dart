import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                activeIcon: Icon(EvaIcons.bookOpen),
                icon: Icon(EvaIcons.bookOpenOutline),
                label: "Comic"),
            BottomNavigationBarItem(
                activeIcon: Icon(EvaIcons.search),
                icon: Icon(EvaIcons.searchOutline),
                label: "Search"),
            BottomNavigationBarItem(
                activeIcon: Icon(EvaIcons.heart),
                icon: Icon(EvaIcons.heartOutline),
                label: "Favourite"),
            BottomNavigationBarItem(
                activeIcon: Icon(EvaIcons.person),
                icon: Icon(EvaIcons.personOutline),
                label: "Account"),
          ],
        ),
      ),
    );
  }
}
