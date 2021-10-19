import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/injector.dart';
import 'package:movie_app/features/userAccount/presentation/bloc/auth_bloc.dart';
import 'package:movie_app/features/userAccount/presentation/pages/phone/phone_auth_screen.dart';
import 'package:movie_app/features/userAccount/presentation/pages/sign_up_screen.dart';

class AppRouter {
  final AuthBloc _authBloc = AuthBloc(sl());
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/signup':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _authBloc,
                  child: SignUpScreen(),
                ));

      case '/phoneauth':
        return MaterialPageRoute(builder: (_) => PhoneAuthScreen());

      default:
        return null;
    }
  }
}
