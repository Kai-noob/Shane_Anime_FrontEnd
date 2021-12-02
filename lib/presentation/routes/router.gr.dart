// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../auth/signup/sign_up_screen.dart' as _i2;
import '../details/details_screen.dart' as _i4;
import '../layout/bottom_navigation.dart' as _i3;
import '../profile/components/change_name_screen.dart' as _i5;
import '../profile/profile_screen.dart' as _i6;
import '../splash/splash.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    SignUpScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignUpScreen());
    },
    BottomNavigationScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.BottomNavigationScreen());
    },
    DetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<DetailsScreenRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.DetailsScreen(key: args.key, comicId: args.comicId));
    },
    ChangeNameScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ChangeNameScreen());
    },
    ProfileScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ProfileScreen());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i7.RouteConfig(SignUpScreenRoute.name, path: '/sign-up-screen'),
        _i7.RouteConfig(BottomNavigationScreenRoute.name,
            path: '/bottom-navigation-screen'),
        _i7.RouteConfig(DetailsScreenRoute.name, path: '/details-screen'),
        _i7.RouteConfig(ChangeNameScreenRoute.name,
            path: '/change-name-screen'),
        _i7.RouteConfig(ProfileScreenRoute.name, path: '/profile-screen')
      ];
}

/// generated route for [_i1.SplashScreen]
class SplashScreenRoute extends _i7.PageRouteInfo<void> {
  const SplashScreenRoute() : super(name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for [_i2.SignUpScreen]
class SignUpScreenRoute extends _i7.PageRouteInfo<void> {
  const SignUpScreenRoute() : super(name, path: '/sign-up-screen');

  static const String name = 'SignUpScreenRoute';
}

/// generated route for [_i3.BottomNavigationScreen]
class BottomNavigationScreenRoute extends _i7.PageRouteInfo<void> {
  const BottomNavigationScreenRoute()
      : super(name, path: '/bottom-navigation-screen');

  static const String name = 'BottomNavigationScreenRoute';
}

/// generated route for [_i4.DetailsScreen]
class DetailsScreenRoute extends _i7.PageRouteInfo<DetailsScreenRouteArgs> {
  DetailsScreenRoute({_i8.Key? key, required String comicId})
      : super(name,
            path: '/details-screen',
            args: DetailsScreenRouteArgs(key: key, comicId: comicId));

  static const String name = 'DetailsScreenRoute';
}

class DetailsScreenRouteArgs {
  const DetailsScreenRouteArgs({this.key, required this.comicId});

  final _i8.Key? key;

  final String comicId;

  @override
  String toString() {
    return 'DetailsScreenRouteArgs{key: $key, comicId: $comicId}';
  }
}

/// generated route for [_i5.ChangeNameScreen]
class ChangeNameScreenRoute extends _i7.PageRouteInfo<void> {
  const ChangeNameScreenRoute() : super(name, path: '/change-name-screen');

  static const String name = 'ChangeNameScreenRoute';
}

/// generated route for [_i6.ProfileScreen]
class ProfileScreenRoute extends _i7.PageRouteInfo<void> {
  const ProfileScreenRoute() : super(name, path: '/profile-screen');

  static const String name = 'ProfileScreenRoute';
}
