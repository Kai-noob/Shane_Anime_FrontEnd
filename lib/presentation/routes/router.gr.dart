// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../auth/signin/sign_in_screen.dart' as _i2;
import '../auth/signup/sign_up_screen.dart' as _i3;
import '../details/details_screen.dart' as _i5;
import '../layout/bottom_navigation.dart' as _i4;
import '../splash/splash.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    SignInScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInScreen());
    },
    SignUpScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignUpScreen());
    },
    BottomNavigationScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.BottomNavigationScreen());
    },
    DetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<DetailsScreenRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.DetailsScreen(key: args.key, comicId: args.comicId));
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i6.RouteConfig(SignInScreenRoute.name, path: '/sign-in-screen'),
        _i6.RouteConfig(SignUpScreenRoute.name, path: '/sign-up-screen'),
        _i6.RouteConfig(BottomNavigationScreenRoute.name,
            path: '/bottom-navigation-screen'),
        _i6.RouteConfig(BottomNavigationScreenRoute.name,
            path: '/bottom-navigation-screen'),
        _i6.RouteConfig(DetailsScreenRoute.name, path: '/details-screen')
      ];
}

/// generated route for [_i1.SplashScreen]
class SplashScreenRoute extends _i6.PageRouteInfo<void> {
  const SplashScreenRoute() : super(name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for [_i2.SignInScreen]
class SignInScreenRoute extends _i6.PageRouteInfo<void> {
  const SignInScreenRoute() : super(name, path: '/sign-in-screen');

  static const String name = 'SignInScreenRoute';
}

/// generated route for [_i3.SignUpScreen]
class SignUpScreenRoute extends _i6.PageRouteInfo<void> {
  const SignUpScreenRoute() : super(name, path: '/sign-up-screen');

  static const String name = 'SignUpScreenRoute';
}

/// generated route for [_i4.BottomNavigationScreen]
class BottomNavigationScreenRoute extends _i6.PageRouteInfo<void> {
  const BottomNavigationScreenRoute()
      : super(name, path: '/bottom-navigation-screen');

  static const String name = 'BottomNavigationScreenRoute';
}

/// generated route for [_i5.DetailsScreen]
class DetailsScreenRoute extends _i6.PageRouteInfo<DetailsScreenRouteArgs> {
  DetailsScreenRoute({_i7.Key? key, required String comicId})
      : super(name,
            path: '/details-screen',
            args: DetailsScreenRouteArgs(key: key, comicId: comicId));

  static const String name = 'DetailsScreenRoute';
}

class DetailsScreenRouteArgs {
  const DetailsScreenRouteArgs({this.key, required this.comicId});

  final _i7.Key? key;

  final String comicId;

  @override
  String toString() {
    return 'DetailsScreenRouteArgs{key: $key, comicId: $comicId}';
  }
}
