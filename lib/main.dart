import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/genre/presentation/bloc/genre_bloc.dart';
import 'package:movie_app/features/home/presentation/view/pages/controll_screen.dart';
import 'package:movie_app/features/home/presentation/view/pages/home/home_screen.dart';
import 'package:movie_app/features/userAccount/presentation/pages/image_upload.dart';
import 'package:movie_app/features/userAccount/presentation/pages/phone/widgets/test_scrren.dart';
import 'package:movie_app/features/userAccount/presentation/pages/sign_in_screen.dart';
import 'package:movie_app/features/userAccount/presentation/pages/test_sign_in_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'features/home/presentation/bloc/complete_bloc.dart';

import 'features/home/presentation/bloc/hot_bloc.dart';
import 'features/home/presentation/bloc/recent_bloc.dart';

import 'features/library/presentation/bloc/library_bloc.dart';
import 'features/search/presentation/bloc/search_bloc.dart';
import 'features/userAccount/presentation/auth/auth_bloc.dart';

import 'package:movie_app/features/userAccount/presentation/pages/sign_up_screen.dart';

import 'core/theme/themes.dart';
import 'features/injector.dart' as di;
import 'features/injector.dart';
import 'features/userAccount/presentation/user/user_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final SharedPreferences _sharedPreferences =
      await SharedPreferences.getInstance();
  await di.initializeDependencies();
  String? isLogined = _sharedPreferences.getString("uid");
  runApp(App(isLogined: isLogined));
}

class App extends StatelessWidget {
  const App({
    Key? key,
    required this.isLogined,
  }) : super(key: key);

  final String? isLogined;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CompleteBloc(sl())..add(FetchCompleteComic()),
        ),
        BlocProvider(
          create: (context) => RecentBloc(sl())..add(FetchRecentEpisode()),
        ),
        BlocProvider(
          create: (context) => HotBloc(sl())..add(FetchHotComic()),
        ),
        BlocProvider(
          create: (context) => UserBloc(sl())..add(FetchUserProfileData()),
        ),
        BlocProvider(
          create: (context) => AuthBloc(sl(), sl(), sl()),
        ),
        BlocProvider(
          create: (context) => LibraryBloc(sl(), sl(), sl()),
        ),
        BlocProvider(
            create: (context) => GenreBloc(sl(), sl())..add(FetchGenres())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // onGenerateRoute: _appRouter.onGenerateRoute,

        theme: Themes.dark,
        // home: SignUpScreen(),
        home: isLogined != null ? ControlView() : SignUpScreen(),
      ),
    );
  }
}
