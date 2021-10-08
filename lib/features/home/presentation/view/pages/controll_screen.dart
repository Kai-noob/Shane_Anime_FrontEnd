import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:movie_app/core/common/loading_indicator.dart';
import 'package:movie_app/core/services/navigation_service.dart';

class ControlView extends StatelessWidget {
  const ControlView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(
      init: NavigationController(),
      builder: (controller) => Scaffold(
        body: controller.currentScreen,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 22,
          elevation: 0.0,
          currentIndex: controller.navigatorIndex,
          onTap: (index) {
            controller.changeCurrentScreen(index);
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
      ),
    );
  }
}

class NoInternetConnection extends StatelessWidget {
  const NoInternetConnection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            LoadingIndicator(),
            SizedBox(
              height: 30,
            ),
            Text("Please check your internet connection.."),
          ],
        ),
      ),
    );
  }
}
