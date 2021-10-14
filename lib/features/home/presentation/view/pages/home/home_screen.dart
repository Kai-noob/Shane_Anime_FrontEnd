import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../genre/presentation/view/genre_title.dart';
import 'widgets/recent_title.dart';
import '../../../../../../core/services/connection_service.dart';
import '../../../../../../core/services/theme_service.dart';
import 'no_internet_connection_widget.dart';
import 'widgets/complete_list.dart';
import '../../../../../genre/presentation/view/genre_list.dart';
import 'widgets/complete_title.dart';
import 'widgets/hot_list.dart';

import 'widgets/hot_title.dart';

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
          flexibleSpace: SizedBox(
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
                      const Positioned(
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
        const GenreTitle(),
        GenreList(),
        const RecentTitle(),
        RecentList(),
        const HotTitle(),
        HotList(),
        const CompleteTitle(),
        CompleteList()
      ],
    );
  }
}
