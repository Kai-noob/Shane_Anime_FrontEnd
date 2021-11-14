import 'package:auto_route/annotations.dart';
import 'package:movie_app/presentation/auth/signin/sign_in_screen.dart';
import 'package:movie_app/presentation/auth/signup/sign_up_screen.dart';
import 'package:movie_app/presentation/layout/bottom_navigation.dart';
import 'package:movie_app/presentation/splash/splash.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: SignInScreen),
    MaterialRoute(page: SignUpScreen),
    MaterialRoute(page: BottomNavigationScreen),
  ],
)
class $AppRouter {}
