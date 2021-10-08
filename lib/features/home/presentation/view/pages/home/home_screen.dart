import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/services/connection_service.dart';

import '../../../../../../core/services/theme_service.dart';

import 'widgets/home_body.dart';
import '../controll_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.theme.backgroundColor,
        title: const Text("Shane Manga"),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                ThemeService().swithTheme();
              },
              icon: Icon(Get.isDarkMode ? Icons.light_mode : Icons.dark_mode))
        ],
      ),
      body: Obx(() =>
          Get.find<NetworkController>().connectionStatus.value == 1 ||
                  Get.find<NetworkController>().connectionStatus.value == 2
              ? HomeBody()
              : const NoInternetConnection()),
    );
  }
}
