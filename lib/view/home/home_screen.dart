import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:movie_app/core/viewmodel/comic_view_model.dart';

import '../../core/services/theme_service.dart';

import '../widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get.put(ComicViewModel());
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
      body: HomeBody(),
    );
  }
}
