import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:movie_app/features/favourite/presentation/view/pages/favourite_screen.dart';
import 'package:movie_app/features/home/presentation/view/pages/genries_screen.dart';
import 'package:movie_app/features/home/presentation/view/pages/home/home_screen.dart';

class NavigationController extends GetxController {
  Widget _currentScreen = const HomeScreen();
  int _navigatorIndex = 0;

  Widget get currentScreen => _currentScreen;

  int get navigatorIndex => _navigatorIndex;

  changeCurrentScreen(int index) {
    _navigatorIndex = index;
    switch (index) {
      case 0:
        _currentScreen = const HomeScreen();
        break;
      case 1:
        _currentScreen = const GenriesScreen();
        break;
      case 2:
        _currentScreen = const FavouriteScreen();
        break;
    }
    update();
  }
}
