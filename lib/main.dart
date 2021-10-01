import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:movie_app/helpers/binding.dart';

import 'configs/theme/themes.dart';
import 'core/services/theme_service.dart';
import 'view/home/navigation_screen.dart';

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
        home: const NavigationScreen());
  }
}
