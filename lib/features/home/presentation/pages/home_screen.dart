import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/themeService/theme_controller.dart';
import 'package:movie_app/core/themeService/theme_service.dart';

import 'package:movie_app/features/home/presentation/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ThemeService());
    return Scaffold(
      appBar: AppBar(
        title: Text("Shane Manga"),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          GetBuilder<ThemeService>(builder: (controller) {
            return IconButton(
                onPressed: () {
                  controller.swithTheme();
                },
                icon: Icon(
                    controller.isDark ? Icons.light_mode : Icons.dark_mode));
          })
          // IconButton(
          //     onPressed: () {
          //       ThemeService().swithTheme();
          //     },
          //     icon: Icon(
          //      Get.isDarkMode ? Icons.light_mode : Icons.dark_mode))
        ],
      ),
      body: HomeBody(),
    );
  }
}
