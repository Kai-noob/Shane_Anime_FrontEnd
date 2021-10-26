import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/presentation/view/pages/home/screens/home_screen.dart';
import 'features/genre/presentation/bloc/genre_bloc.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'features/home/presentation/bloc/complete_comic/complete_bloc.dart';

import 'features/home/presentation/bloc/hot_comic/hot_bloc.dart';
import 'features/home/presentation/bloc/recent_episode/recent_bloc.dart';

import 'core/theme/themes.dart';
import 'features/injector.dart' as di;
import 'features/injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await di.initializeDependencies();

  runApp(App());
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
          create: (context) => CompleteBloc(sl())..add(FetchCompleteComic()),
        ),
        BlocProvider(
          create: (context) =>
              RecentBloc(sl(), sl())..add(FetchRecentEpisode()),
        ),
        BlocProvider(
          create: (context) => HotBloc(sl())..add(FetchHotComic()),
        ),
        BlocProvider(
            create: (context) => GenreBloc(sl(), sl())..add(FetchGenres())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Themes.dark,
        home: HomeScreen(),
      ),
    );
  }
}
