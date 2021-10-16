import 'package:carousel_slider/carousel_slider.dart';
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
    "assets/images/manga.jpg",
    "assets/images/manga.jpg",
    "assets/images/manga.jpg",
    "assets/images/manga.jpg",

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
        SliverToBoxAdapter(
          child: SizedBox(
            height: 300,
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
              },
            ),
          ),
        ),
        // SliverToBoxAdapter(
        //   child: SizedBox(
        //     child: CarouselSlider(
        //       items: images.map((e) => Image.asset(e)).toList(),
        //       options: CarouselOptions(height: 350),
        //     ),
        //   ),
        // ),
        // SliverAppBar(
        //   elevation: 0.0,
        //   title: const Text(
        //     "Shane Manga MM",
        //     style: TextStyle(color: Colors.white),
        //   ),
        //   // floating: true,
        //   expandedHeight: 350,

        // SliverPadding(
        //   padding: const EdgeInsets.symmetric(vertical: 10),
        //   sliver: SliverToBoxAdapter(
        //     child: ImageCarouselWidget(
        //       images: images,
        //     ),
        //   ),
        // ),

        const RecentTitle(),
        RecentList(),
        GenreTitle(),
        GenreList(),
        const HotTitle(),
        HotList(),
        const CompleteTitle(),
        CompleteList()
      ],
    );
  }
}
