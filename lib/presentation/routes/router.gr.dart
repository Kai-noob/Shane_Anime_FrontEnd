// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../auth/signin/sign_in_screen.dart' as _i2;
import '../auth/signup/sign_up_screen.dart' as _i3;
import '../layout/bottom_navigation.dart' as _i4;
import '../splash/splash.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    SignInScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInScreen());
    },
    SignUpScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignUpScreen());
    },
    BottomNavigationScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.BottomNavigationScreen());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i5.RouteConfig(SignInScreenRoute.name, path: '/sign-in-screen'),
        _i5.RouteConfig(SignUpScreenRoute.name, path: '/sign-up-screen'),
        _i5.RouteConfig(BottomNavigationScreenRoute.name,
            path: '/bottom-navigation-screen')
      ];
}

/// generated route for [_i1.SplashScreen]
class SplashScreenRoute extends _i5.PageRouteInfo<void> {
  const SplashScreenRoute() : super(name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for [_i2.SignInScreen]
class SignInScreenRoute extends _i5.PageRouteInfo<void> {
  const SignInScreenRoute() : super(name, path: '/sign-in-screen');

  static const String name = 'SignInScreenRoute';
}

/// generated route for [_i3.SignUpScreen]
class SignUpScreenRoute extends _i5.PageRouteInfo<void> {
  const SignUpScreenRoute() : super(name, path: '/sign-up-screen');

  static const String name = 'SignUpScreenRoute';
}

/// generated route for [_i4.BottomNavigationScreen]
class BottomNavigationScreenRoute extends _i5.PageRouteInfo<void> {
  const BottomNavigationScreenRoute()
      : super(name, path: '/bottom-navigation-screen');

  static const String name = 'BottomNavigationScreenRoute';
}
