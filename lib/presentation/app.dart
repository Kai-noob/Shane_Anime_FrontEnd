import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'splash/splash.dart';
import '../application/auth/bloc/auth_bloc.dart';

import '../helper/theme/themes.dart';
import 'package:flutter/material.dart';
import '../injection.dart';

class App extends StatefulWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
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
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: Themes.dark,
            home: const SecondClass(),
          );
        },
        designSize: const Size(360, 690),
      ),
    );
  }
}
