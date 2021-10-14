import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
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
        initialBinding: HomeBinding(),
        debugShowCheckedModeBanner: false,
        theme: Themes.dark,
        darkTheme: Themes.light,
        themeMode: ThemeService().theme,
        home: const ControlView());
  }
}
