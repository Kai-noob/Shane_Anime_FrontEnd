import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/userAccount/presentation/pages/user_account_screen.dart';
import '../../features/home/presentation/view/pages/home/home_screen.dart';
import '../../features/search/presentation/view/pages/search_page.dart';

import '../../features/favourite/presentation/view/pages/favourite_screen.dart';

class NavigationController extends GetxController {
  Widget _currentScreen = HomeScreen();
  int _navigatorIndex = 0;

  Widget get currentScreen => _currentScreen;

  int get navigatorIndex => _navigatorIndex;

  changeCurrentScreen(int index) {
    _navigatorIndex = index;
    switch (index) {
      case 0:
        _currentScreen = HomeScreen();
        break;
      case 1:
        _currentScreen = SearchScreen();
        break;
      case 2:
        _currentScreen = const FavouriteScreen();
        break;
      case 3:
        _currentScreen = const UserAccountScreen();
        break;
    }
    update();
  }
}
