import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/services/connection_service.dart';
import '../../../../../../core/services/theme_service.dart';
import 'widgets/complete_list.dart';
import 'widgets/genre_list.dart';
import 'widgets/hot_list.dart';

import 'widgets/image_slider.dart';
import '../list/list_screen.dart';

import '../controll_screen.dart';
import 'widgets/recent_list.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

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
      body: Obx(() =>
          Get.find<NetworkController>().connectionStatus.value == 1 ||
                  Get.find<NetworkController>().connectionStatus.value == 2
              ? HomeBody(images: images)
              : const NoInternetConnection()),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List images;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: context.theme.backgroundColor,
          elevation: 0.0,
          title: const Text(
            "Shane Manga MM",
            style: TextStyle(color: Colors.white),
          ),
          // floating: true,
          expandedHeight: 350,

          actions: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black,
              child: IconButton(
                  onPressed: () {
                    ThemeService().swithTheme();
                  },
                  icon: Icon(
                    Get.isDarkMode ? EvaIcons.sunOutline : EvaIcons.moonOutline,
                    color: Colors.white,
                  )),
            )
          ],
          flexibleSpace: Container(
            height: 350,
            child: PageView.builder(
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(images[index]))),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Text(
                          "Demon Slayer",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w800),
                        ),
                      )
                    ],
                  );
                }),
          ),
        ),
        // SliverPadding(
        //   padding: const EdgeInsets.symmetric(vertical: 10),
        //   sliver: SliverToBoxAdapter(
        //     child: ImageCarouselWidget(
        //       images: images,
        //     ),
        //   ),
        // ),
        const GenresText(),
        GenreList(),
        const RecentText(),
        RecentList(),
        const HotText(),
        HotList(),
        const CompletedText(),
        CompleteList()
      ],
    );
  }
}

class GenresText extends StatelessWidget {
  const GenresText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      sliver: SliverToBoxAdapter(
        child: Text(
          "Genres",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
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
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Completed Series",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
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
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Hot Mangas",
              style: TextStyle(
                  fontFamily: "MyFont",
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            TextButton(
                onPressed: () {
                  Get.to(() => const ListScreen());
                },
                child: const Text("View All",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "MyFont",
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
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Daily Update",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
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
