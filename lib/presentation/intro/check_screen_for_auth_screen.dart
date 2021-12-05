import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/application/auth/bloc/auth_bloc.dart';
import 'package:movie_app/helper/global/loading_indicator.dart';
import 'package:movie_app/presentation/auth/signup/sign_up_screen.dart';
import 'package:movie_app/presentation/layout/bottom_navigation.dart';

class CheckScreen extends StatelessWidget {
  const CheckScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) => SignUpScreen())),
            authenticated: (_) => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        BottomNavigationScreen())));
      },
      child: Scaffold(
        body: Center(
          child: LoadingIndicator(),
        ),
      ),
    );
  }
}
