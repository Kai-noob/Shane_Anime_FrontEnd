import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/features/genre/presentation/bloc/genre_bloc.dart';
import 'package:movie_app/features/home/presentation/bloc/complete_comic/complete_bloc.dart';
import 'package:movie_app/features/home/presentation/bloc/daily_update/daily_update_bloc.dart';
import '../../../../bloc/filter_episode/filterepisode_bloc.dart';
import '../../../../bloc/hot_comic/hot_bloc.dart';
import '../../details/screens/details_screen.dart';
import 'daily_update_screen.dart';
import '../widgets/shimmer_app_bar.dart';
import '../../../../../../search/presentation/view/pages/search_page.dart';

import '../../../../../../genre/presentation/view/genre_list.dart';

import '../../../../../../injector.dart';
import '../widgets/complete_list.dart';
import '../widgets/home_title_widget.dart';
import '../widgets/hot_list.dart';

import '../widgets/daily_update_list.dart';
import 'complete_comic_screen.dart';
import 'hot_comic_screen.dart';
import 'dart:async';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: HomeBody());
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

  GlobalKey refreshkey = GlobalKey<RefreshIndicatorState>();

  Future<void> refresh() async {
    await Future.delayed(const Duration(seconds: 2));
    context.read<HotBloc>().add(FetchLimitHotComic());
    context.read<CompleteBloc>().add(FetchLimitCompleteComic());
    context.read<DailyUpdateBloc>().add(FetchDailyEpisode());
    context.read<GenreBloc>().add(FetchGenres());
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Colors.black,
      displacement: 50,
      backgroundColor: Colors.white,
      key: refreshkey,
      onRefresh: refresh,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 350,
            title: const Text(
              "Shane Manga MM",
              style: TextStyle(fontFamily: "HeaderFont"),
            ),
            backgroundColor: Colors.black,
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => SearchScreen()));
                  },
                  icon: const Icon(
                    Ionicons.search_outline,
                  ))
            ],
            flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: BlocBuilder<HotBloc, HotState>(
                  builder: (context, state) {
                    if (state is HotLimitComicLoading) {
                      return const ShimmerAppBar();
                    }
                    if (state is HotLimitComicLoaded) {
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
                                          const Color(0xff212121),
                                          const Color(0xff212121)
                                              .withOpacity(.3)
                                        ])),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Text(state.hotComics[index].title,
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: "HeaderFont",
                                                  fontSize: 30,
                                                  overflow:
                                                      TextOverflow.ellipsis)),
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
                                                    (index) => buildDots(
                                                        index: index))),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                placeholder: (context, url) => Container(
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/logo/logo.png")),
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
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => BlocProvider(
                      create: (context) => FilterepisodeBloc(sl()),
                      child: const DailyUpdateScreen(),
                    ))),
          ),
          const DailyUpdateList(),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            sliver: SliverToBoxAdapter(
              child: Text(
                "Genres",
                style: TextStyle(fontSize: 20, fontFamily: "HeaderFont"),
              ),
            ),
          ),
          const GenreList(),
          HomeTitleWidget(
            label: "Hot Mangas",
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const HotAllComicView())),
          ),
          const HotList(),
          HomeTitleWidget(
            label: "Completed Series",
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => const CompleteAllComicView())),
          ),
          const CompleteList()
        ],
      ),
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
            color: currentIndex == index ? Colors.red : Colors.white),
      ),
    );
  }
}
