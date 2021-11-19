import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/application/home/complete_comic/complete_comic_bloc.dart';
import 'package:movie_app/application/home/hot_comic/hot_comic_bloc.dart';

import 'package:movie_app/helper/global/error_message.dart';
import 'package:movie_app/injection.dart';
import 'package:movie_app/presentation/details/details_screen.dart';
import 'package:movie_app/presentation/home/components/daily_update_card.dart';
import 'package:movie_app/presentation/home/components/home_title.dart';
import 'package:movie_app/presentation/home/components/shimmer_app_bar.dart';

import 'components/shimmer_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => getIt<CompleteComicBloc>()
              ..add(const CompleteComicEvent.getCompleteComics())),
        BlocProvider(
            create: (context) =>
                getIt<HotComicBloc>()..add(const HotComicEvent.getHotComics())),
      ],
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0.0,
              expandedHeight: MediaQuery.of(context).size.height * 0.5,
              backgroundColor: const Color(0xFF2F323E),
              actions: [
                IconButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (BuildContext context) => SearchScreen()));
                    },
                    icon: const Icon(
                      Ionicons.search_outline,
                    ))
              ],
              flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: BlocBuilder<HotComicBloc, HotComicState>(
                    builder: (context, state) => state.maybeMap(
                        orElse: () => const ErrorMessage(
                            message: "Error", isSliver: false),
                        loading: (_) => const ShimmerAppBar(),
                        loaded: (state) {
                          return PageView.builder(
                              onPageChanged: (value) {
                                setState(() {
                                  currentIndex = value;
                                });
                              },
                              itemCount: state.comics.length,
                              itemBuilder: (BuildContext context, int index) {
                                String genre = state.comics[index].genres!
                                    .map((e) => e.name)
                                    .join(".");

                                return GestureDetector(
                                  onTap: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              DetailsScreen(
                                                  comicId: state
                                                      .comics[index].id!))),
                                  child: CachedNetworkImage(
                                    imageUrl: state.comics[index].coverPhoto,
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
                                              Text(genre),
                                              // Text(state.comics[index].genres!.map((e) => e.name).toList(),
                                              //     style: const TextStyle(
                                              //         color: Colors.white,
                                              //         fontSize: 14,
                                              //         overflow: TextOverflow
                                              //             .ellipsis)),
                                              Text(state.comics[index].title,
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: "HeaderFont",
                                                    fontSize: 30,
                                                  )),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: List.generate(
                                                        state.comics.length,
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
                        }),
                  )),
            ),
            HomeTitleWidget(label: "Hot Mangas", onTap: () {}),

            // SliverToBoxAdapter(
            //   child: DatePicker(
            //     DateTime.now(),
            //     width: 80,
            //     height: 130,
            //     initialSelectedDate: DateTime.now(),
            //     selectionColor: Colors.deepOrangeAccent,
            //     selectedTextColor: Colors.white,
            //     monthTextStyle: TextStyle(color: Colors.white),
            //     dayTextStyle: TextStyle(color: Colors.white),
            //     dateTextStyle: TextStyle(color: Colors.white),
            //     daysCount: 7,
            //     onDateChange: (date) {
            //       // New date selected
            //     },
            //   ),
            // ),
            BlocBuilder<CompleteComicBloc, CompleteComicState>(
                builder: (context, state) => state.maybeMap(
                    orElse: () =>
                        const ErrorMessage(message: "Error", isSliver: true),
                    loading: (_) => const ShimmerCard(),
                    error: (_) => const Text("Error"),
                    loaded: (episodes) => SliverToBoxAdapter(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                children: episodes.comics
                                    .map((e) => DailyUpdateCard(episodes: e))
                                    .toList()),
                          ),
                        )))
          ],
        ),
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
