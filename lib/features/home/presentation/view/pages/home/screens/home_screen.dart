import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:movie_app/core/global/image_widget.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/features/home/presentation/bloc/complete_comic/complete_bloc.dart';
import 'package:movie_app/features/home/presentation/bloc/hot_comic/hot_bloc.dart';
import 'package:movie_app/features/home/presentation/bloc/recent_episode/recent_bloc.dart';
import 'package:movie_app/features/home/presentation/view/pages/details/screens/details_screen.dart';
import 'package:movie_app/features/home/presentation/view/pages/home/screens/recent_episode_screen.dart';
import 'package:movie_app/features/home/presentation/view/pages/home/widgets/shimmer_app_bar.dart';
import 'package:movie_app/features/home/presentation/view/pages/home/widgets/shimmer_card.dart';
import 'package:movie_app/features/search/presentation/view/pages/search_page.dart';

import '../../../../../../genre/presentation/view/genre_list.dart';
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

import '../widgets/complete_list.dart';
import '../widgets/home_title_widget.dart';
import '../widgets/hot_list.dart';

import '../widgets/recent_list.dart';
import 'complete_comic_screen.dart';
import 'hot_comic_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomeBody());
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 350,
          title: Text("Shane Manga MM"),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => SearchScreen()));
                },
                icon: Icon(
                  Ionicons.search_outline,
                ))
          ],
          flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: BlocBuilder<HotBloc, HotState>(
                builder: (context, state) {
                  if (state is HotComicLoading) {
                    return ShimmerAppBar();
                  }
                  if (state is HotComicLoaded) {
                    return PageView.builder(
                        onPageChanged: (value) {
                          setState(() {
                            currentIndex = value;
                          });
                        },
                        itemCount: state.hotComics.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        DetailsScreen(
                                            comicModel:
                                                state.hotComics[index]))),
                            child: CachedNetworkImage(
                              imageUrl: state.hotComics[index].coverPhoto,
                              imageBuilder: (context, imageProvider) =>
                                  Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.bottomRight,
                                          colors: [
                                        Colors.black,
                                        Colors.black.withOpacity(.3)
                                      ])),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Text(state.hotComics[index].title,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30,
                                            )),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: List.generate(
                                                  state.hotComics.length,
                                                  (index) =>
                                                      buildDots(index: index))),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              placeholder: (context, url) => Container(
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        image:
                                            AssetImage("assets/logo/logo.png")),
                                    color: Colors.grey.shade300),
                              ),
                              errorWidget: (context, url, error) =>
                                  const Icon(Ionicons.image, size: 35),
                            ),
                          );
                        });
                  }
                  return Container();
                },
              )),
        ),
        HomeTitleWidget(
          label: "Daily Update",
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => TableBasicsExample())),
        ),
        const RecentList(),
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          sliver: SliverToBoxAdapter(
            child: Text(
              "Genres",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const GenreList(),
        HomeTitleWidget(
          label: "Hot Mangas",
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const HotAllComicView())),
        ),
        const HotList(),
        HomeTitleWidget(
          label: "Completed Series",
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const CompleteAllComicView())),
        ),
        const CompleteList()
      ],
    );
  }

  Widget buildDots({required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        height: 6,
        width: currentIndex == index ? 20 : 8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color:
                currentIndex == index ? const Color(0xFF188DFA) : Colors.white),
      ),
    );
  }
}
