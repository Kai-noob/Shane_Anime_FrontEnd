import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/application/auth/bloc/auth_bloc.dart';
import 'package:movie_app/helper/global/loading_indicator.dart';
import 'package:movie_app/presentation/routes/router.gr.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () => context.replaceRoute(const SignUpScreenRoute()),
            authenticated: (_) =>
                context.replaceRoute(const BottomNavigationScreenRoute()));
      },
      child: Scaffold(
        body: Center(
          child: LoadingIndicator(),
        ),
      ),
    );
  }
}
