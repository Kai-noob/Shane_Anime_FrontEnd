import 'package:auto_route/annotations.dart';


import '../auth/signup/sign_up_screen.dart';
import '../details/details_screen.dart';
import '../layout/bottom_navigation.dart';
import '../profile/components/change_name_screen.dart';
import '../profile/profile_screen.dart';
import '../splash/splash.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: SignUpScreen),
    AutoRoute(page: BottomNavigationScreen),
    AutoRoute(page: DetailsScreen),
    AutoRoute(page: ChangeNameScreen),
    AutoRoute(page: ProfileScreen),
  ],
)
class $AppRouter {}
