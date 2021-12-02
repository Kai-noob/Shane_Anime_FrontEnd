import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../application/auth/bloc/auth_bloc.dart';

import '../helper/theme/themes.dart';
import 'package:flutter/material.dart';
import '../injection.dart';
import 'routes/router.gr.dart';

class App extends StatelessWidget {
  App({
    Key? key,
  }) : super(key: key);

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested())),
      ],
      child: ScreenUtilInit(
        builder: () {
          return MaterialApp.router(
            routeInformationParser: _router.defaultRouteParser(),
            routerDelegate: _router.delegate(),
            debugShowCheckedModeBanner: false,
            theme: Themes.dark,
          );
        },
        designSize: const Size(360, 690),
      ),
    );
  }
}
