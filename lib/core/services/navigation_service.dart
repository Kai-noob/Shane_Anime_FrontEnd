import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/home/presentation/view/pages/home/home_screen.dart';
import 'package:movie_app/features/search/presentation/view/pages/search_page.dart';

import '../../features/favourite/presentation/view/pages/favourite_screen.dart';
import '../../features/genre/presentation/view/genre/genries_screen.dart';

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
        _currentScreen = FavouriteScreen();
        break;
    }
    update();
  }
}
