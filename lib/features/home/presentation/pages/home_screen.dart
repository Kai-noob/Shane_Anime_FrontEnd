import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/home/presentation/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shane Manga"),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.isDarkMode
                    ? Get.changeThemeMode(ThemeMode.dark)
                    : Get.changeThemeMode(ThemeMode.light);
              },
              icon: Icon(Get.isDarkMode ? Icons.dark_mode : Icons.light_mode))
        ],
      ),
      body: HomeBody(),
    );
  }
}
