import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/global/image_widget.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/core/services/theme_service.dart';
import 'package:movie_app/core/strings/strings.dart';
import 'package:movie_app/features/home/presentation/controllers/comic_controller.dart';
import 'package:movie_app/features/home/presentation/view/pages/home/widgets/complete_list.dart';
import 'package:movie_app/features/home/presentation/view/pages/home/widgets/hot_list.dart';

import 'package:movie_app/features/home/presentation/view/pages/home/widgets/image_slider.dart';
import 'package:movie_app/features/home/presentation/view/pages/home/widgets/recent_item.dart';
import 'package:movie_app/features/home/presentation/view/pages/list/list_screen.dart';

import 'widgets/recent_list.dart';

class TestScreen extends StatelessWidget {
  TestScreen({Key? key}) : super(key: key);

  final List images = [
    "assets/images/animeone.jpeg",
    "assets/images/animefour.jpeg",
    "assets/images/animethree.jpeg",
    "assets/images/animethree.jpeg",
    // "assets/images/animethree.jpeg",
    // "assets/images/animethree.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: context.theme.backgroundColor,
              elevation: 0.0,
              title: Text("Shane Manga"),
              floating: true,
              actions: [
                IconButton(
                    onPressed: () {
                      ThemeService().swithTheme();
                    },
                    icon: Icon(Get.isDarkMode
                        ? EvaIcons.sunOutline
                        : EvaIcons.moonOutline))
              ],
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 10),
              sliver: SliverToBoxAdapter(
                child: ImageCarouselWidget(
                  images: images,
                ),
              ),
            ),
            RecentText(),
            RecentList(),
            HotText(),
            HotList(),
            CompletedText(),
            CompleteList()
          ],
        ),
      ),
    );
  }
}

class CompletedText extends StatelessWidget {
  const CompletedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(vertical: 10),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Completed Series",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            TextButton(
                onPressed: () {
                  Get.to(() => const ListScreen());
                },
                child: const Text("View All",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.deepPurple,
                        fontSize: 17)))
          ],
        ),
      ),
    );
  }
}

class HotText extends StatelessWidget {
  const HotText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(vertical: 10),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Hot Mangas",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            TextButton(
                onPressed: () {
                  Get.to(() => const ListScreen());
                },
                child: const Text("View All",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.deepPurple,
                        fontSize: 17)))
          ],
        ),
      ),
    );
  }
}

class RecentText extends StatelessWidget {
  const RecentText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(vertical: 10),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Daily Update",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            TextButton(
                onPressed: () {
                  Get.to(() => const ListScreen());
                },
                child: const Text("View All",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.deepPurple,
                        fontSize: 17)))
          ],
        ),
      ),
    );
  }
}
