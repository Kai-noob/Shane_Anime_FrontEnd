import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/application/episodes/episodes_bloc.dart';
import '../../helper/global/cutom_error_widget.dart';

import '../../helper/services/local_notification_sevice.dart';
import 'components/home_app_bar.dart';
import '../../application/episodes/episodes_bloc.dart';
import '../../application/genre/genre_bloc.dart';
import '../../application/home/all_comics/all_comics_bloc.dart';
import '../../application/home/complete_comic/complete_comic_bloc.dart';
import '../../application/home/hot_comic/hot_comic_bloc.dart';

import '../../injection.dart';
import 'components/comic_card.dart';
import 'components/daily_update_card.dart';
import 'components/home_title.dart';
import '../more_comic/all_comic_screen.dart';
import '../more_comic/completed_more_screen.dart';
import '../more_comic/hot_more_screen.dart';

import 'components/genre_list.dart';
import 'components/shimmer_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    LocalNotificationService.initialize(context);
    FirebaseMessaging.instance.getInitialMessage();

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {});

    FirebaseMessaging.onMessage.listen((message) {
      if (message.notification != null) {}
      LocalNotificationService.display(message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => getIt<CompleteComicBloc>()
              ..add(const CompleteComicEvent.getHomeCompletedComics())),
        BlocProvider(
            create: (context) => getIt<HotComicBloc>()
              ..add(const HotComicEvent.getHomeHotComics())),
        BlocProvider(
            create: (context) => getIt<AllComicsBloc>()
              ..add(const AllComicsEvent.getHomeAllComics())),
        BlocProvider(
            create: (context) =>
                getIt<GenreBloc>()..add(const GenreEvent.getGenres())),
        BlocProvider(
            create: (context) =>
                getIt<EpisodesBloc>()..add(const EpisodesEvent.getEpisodes())),
      ],
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const HomeAppBar(),
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              sliver: SliverToBoxAdapter(
                child: Text(
                  "Daily Episodes",
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
            ),
            BlocBuilder<EpisodesBloc, EpisodesState>(
                builder: (context, state) => state.maybeMap(
                    orElse: () => SliverToBoxAdapter(child: Container()),
                    loading: (_) => const ShimmerCard(),
                    error: (error) => SliverToBoxAdapter(
                          child: CustomError(
                              errorMessage: error.failure.maybeMap(
                                  unexcepted: (_) =>
                                      "Unexcepted Error occured.",
                                  notFound: (_) => "No Saved Mangas",
                                  orElse: () => "Unknown Error"),
                              errorImage: "assets/logo/error.svg"),
                        ),
                    loaded: (state) => SliverToBoxAdapter(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                children: state.episodes
                                    .map((e) => DailyUpdateCard(
                                          episodes: e,
                                          episodeList: state.episodes,
                                        ))
                                    .toList()),
                          ),
                        ))),
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              sliver: SliverToBoxAdapter(
                child: Text(
                  "Genres",
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
            ),
            const GenreList(),
            HomeTitleWidget(
                label: "Hot Mangas",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const HotMoreComicView()));
                }),
            BlocBuilder<HotComicBloc, HotComicState>(
                builder: (context, state) => state.maybeMap(
                    orElse: () => SliverToBoxAdapter(child: Container()),
                    loading: (_) => const ShimmerCard(),
                    error: (error) => SliverToBoxAdapter(
                          child: CustomError(
                              errorMessage: error.failure.maybeMap(
                                  unexcepted: (_) =>
                                      "Unexcepted Error occured.",
                                  notFound: (_) => "No Saved Mangas",
                                  orElse: () => "Unknown Error"),
                              errorImage: "assets/logo/error.svg"),
                        ),
                    loaded: (state) => SliverToBoxAdapter(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                children: state.comics.map((e) {
                              return BlocProvider(
                                create: (context) => getIt<EpisodesBloc>()
                                  ..add(EpisodesEvent.getLatestEpisodes(e.id!)),
                                child: ComicCard(comic: e),
                              );
                            }).toList()),
                          ),
                        ))),
            HomeTitleWidget(
                label: "Completed Series",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const CompletedMoreComicView()));
                }),
            BlocBuilder<CompleteComicBloc, CompleteComicState>(
                builder: (context, state) => state.maybeMap(
                    orElse: () => SliverToBoxAdapter(child: Container()),
                    loading: (_) => const ShimmerCard(),
                    error: (error) => SliverToBoxAdapter(
                          child: CustomError(
                              errorMessage: error.failure.maybeMap(
                                  unexcepted: (_) =>
                                      "Unexcepted Error occured.",
                                  notFound: (_) => "No Saved Mangas",
                                  orElse: () => "Unknown Error"),
                              errorImage: "assets/logo/error.svg"),
                        ),
                    loaded: (state) => SliverToBoxAdapter(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                children: state.comics.map((e) {
                              return BlocProvider(
                                create: (context) => getIt<EpisodesBloc>()
                                  ..add(EpisodesEvent.getLatestEpisodes(e.id!)),
                                child: ComicCard(comic: e),
                              );
                            }).toList()),
                          ),
                        ))),
            HomeTitleWidget(
                label: "All Comics",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const AllMoreComicView()));
                }),
            BlocBuilder<AllComicsBloc, AllComicsState>(
                builder: (context, state) => state.maybeMap(
                    orElse: () => SliverToBoxAdapter(child: Container()),
                    loading: (_) => const ShimmerCard(),
                    error: (error) => SliverToBoxAdapter(
                          child: CustomError(
                              errorMessage: error.failure.maybeMap(
                                  unexcepted: (_) =>
                                      "Unexcepted Error occured.",
                                  notFound: (_) => "No Saved Mangas",
                                  orElse: () => "Unknown Error"),
                              errorImage: "assets/logo/error.svg"),
                        ),
                    loaded: (state) => SliverToBoxAdapter(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                children: state.comics
                                    .map((e) => BlocProvider(
                                          create: (context) =>
                                              getIt<EpisodesBloc>()
                                                ..add(EpisodesEvent
                                                    .getLatestEpisodes(e.id!)),
                                          child: ComicCard(comic: e),
                                        ))
                                    .toList()),
                          ),
                        )))
          ],
        ),
      ),
    );
  }
}
