import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/presentation/bloc/all_comic/allcomic_bloc.dart';
import 'package:movie_app/features/home/presentation/bloc/details/details_bloc.dart';
import 'features/home/presentation/view/pages/home/screens/home_screen.dart';
import 'features/genre/presentation/bloc/genre_bloc.dart';

import 'features/home/presentation/bloc/complete_comic/complete_bloc.dart';

import 'features/home/presentation/bloc/daily_update/daily_update_bloc.dart';
import 'features/home/presentation/bloc/hot_comic/hot_bloc.dart';

import 'core/theme/themes.dart';
import 'features/injector.dart' as di;
import 'features/injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  await di.initializeDependencies();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              CompleteBloc(sl(), sl())..add(FetchLimitCompleteComic()),
        ),
        BlocProvider(
          create: (context) => DailyUpdateBloc(
            sl(),
          )..add(FetchDailyEpisode()),
        ),
        BlocProvider(
          create: (context) => HotBloc(sl(), sl())..add(FetchLimitHotComic()),
        ),
        BlocProvider(
          create: (context) =>
              AllcomicBloc(sl(), sl())..add(FetchAllLimitComic()),
        ),
        BlocProvider(
          create: (context) => DetailsBloc(sl(), sl(), sl(), sl()),
        ),
        BlocProvider(
            create: (context) => GenreBloc(sl(), sl())..add(FetchGenres())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Themes.dark,
        home: const HomeScreen(),
      ),
    );
  }
}
