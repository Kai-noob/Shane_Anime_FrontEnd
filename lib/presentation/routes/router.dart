import 'package:auto_route/annotations.dart';
import 'package:movie_app/presentation/auth/signin/sign_in_screen.dart';
import 'package:movie_app/presentation/auth/signup/sign_up_screen.dart';
import 'package:movie_app/presentation/details/details_screen.dart';
import 'package:movie_app/presentation/layout/bottom_navigation.dart';
import 'package:movie_app/presentation/splash/splash.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: SignInScreen),
    AutoRoute(page: SignUpScreen),
    AutoRoute(page: BottomNavigationScreen),
    AutoRoute(page: BottomNavigationScreen),
    AutoRoute(page: DetailsScreen),
  ],
)
class $AppRouter {}
