import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/router/app_router.dart';
import 'package:movie_app/features/home/presentation/bloc/bloc/hot_bloc.dart';
import 'package:movie_app/features/home/presentation/bloc/bloc/recent_bloc.dart';
import 'package:movie_app/features/home/presentation/bloc/details/bloc/details_bloc.dart';
import 'package:movie_app/features/home/presentation/bloc/home_bloc.dart';

import 'package:movie_app/features/home/presentation/view/pages/home/home_screen.dart';
import 'package:movie_app/features/userAccount/presentation/bloc/auth_bloc.dart';

import 'package:movie_app/features/userAccount/presentation/pages/phone/phone_auth_screen.dart';
import 'package:movie_app/features/userAccount/presentation/pages/sign_up_screen.dart';
import 'core/services/theme_service.dart';
import 'core/theme/themes.dart';
import 'features/home/presentation/view/pages/controll_screen.dart';
import 'features/injector.dart' as di;
import 'features/injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await di.initializeDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // onGenerateRoute: _appRouter.onGenerateRoute,
        theme: Themes.dark,
        home: MultiBlocProvider(providers: [
          BlocProvider(
            create: (context) => HomeBloc(sl())..add(CompleteComicFetch()),
          ),
          BlocProvider(
            create: (context) => RecentBloc(sl())..add(FetchRecentComic()),
          ),
          BlocProvider(
            create: (context) => HotBloc(sl())..add(FetchHotComic()),
          ),
        ], child: ControlView()));
  }
}
