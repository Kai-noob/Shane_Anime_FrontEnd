import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ionicons/ionicons.dart';
import 'package:movie_app/core/global/image_widget.dart';
import 'package:movie_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:movie_app/features/home/presentation/view/pages/details/widgets/detial_sliver_delegate.dart';
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
        body: HomeBody(
      images: images,
    ));
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List images;

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: NestedScrollView(
          physics: const ClampingScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 350,
                elevation: 0.0,
                title: Text(
                  "Shame Manga MM",
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.white),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Image.asset(
                    "assets/images/manga.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                delegate: SliverAppBarDelegate(
                  TabBar(
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.black,
                    tabs: [
                      Tab(
                        text: "Comic",
                      ),
                      Tab(
                        text: "Genres",
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      RecentTitle(),
                      RecentList(),
                      HotTitle(),
                      HotList(),
                      CompleteTitle(),
                      CompleteList()
                    ],
                  ),
                ),
              ),
              Container()
            ],
          ),
        ));
  }
}
