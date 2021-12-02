// ignore: implementation_imports
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/application/auth/bloc/auth_bloc.dart';
import 'package:movie_app/presentation/routes/router.gr.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () => context.replaceRoute(const SignUpScreenRoute()),
            authenticated: (_) => context.replaceRoute(BottomNavigationScreenRoute()));
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(
                "assets/logo/splash.png",
                height: 250.h,
                width: 250.w,
              ),
              const Spacer(),
              Text(
                "Shane Manga MM",
                style: TextStyle(fontSize: 25.sp, color: Colors.red),
              ),
              SizedBox(
                height: 30.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
