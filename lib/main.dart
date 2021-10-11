import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:movie_app/features/favourite/presentation/view/pages/favourite_screen.dart';
import 'package:movie_app/features/genre/presentation/view/genre/genries_screen.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'core/services/theme_service.dart';
import 'core/theme/themes.dart';
import 'features/home/presentation/view/pages/controll_screen.dart';
import 'features/home/binding/home_binding.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialBinding: Binding(),
        debugShowCheckedModeBanner: false,
        theme: Themes.dark,
        darkTheme: Themes.light,
        themeMode: ThemeService().theme,
        home: ControlView());
  }
}
