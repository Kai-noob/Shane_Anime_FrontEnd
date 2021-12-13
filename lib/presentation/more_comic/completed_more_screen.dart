import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/application/episodes/episodes_bloc.dart';
import 'package:movie_app/application/genre/genre_bloc.dart';
import 'package:shimmer/shimmer.dart';
import '../../helper/global/cutom_error_widget.dart';
import '../../application/home/complete_comic/complete_comic_bloc.dart';
import '../../helper/global/image_widget.dart';
import '../../helper/global/loading_indicator.dart';
import '../../injection.dart';
import '../details/details_screen.dart';

class CompletedMoreComicView extends StatelessWidget {
  const CompletedMoreComicView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CompleteComicBloc>()
        ..add(const CompleteComicEvent.getMoreCompletedComics()),
      child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: const Text("Completed Series"),
          ),
          body: BlocBuilder<CompleteComicBloc, CompleteComicState>(
              builder: (context, state) {
            return state.maybeMap(
                orElse: () => Container(),
                error: (error) => CustomError(
                    errorMessage: error.failure.maybeMap(
                        unexcepted: (_) => "Unexcepted Error occured.",
                        notFound: (_) => "No Saved Mangas",
                        orElse: () => "Unknown Error"),
                    errorImage: "assets/logo/error.svg"),
                loading: (_) => const LoadingIndicator(),
                loaded: (comicState) {
                  return ListView.builder(
                    itemCount: comicState.comics.length,
                    itemBuilder: (BuildContext context, int index) {
                      return MultiBlocProvider(
                        providers: [
                          BlocProvider(
                            create: (context) => getIt<GenreBloc>()
                              ..add(GenreEvent.getComicGenres(
                                  comicState.comics[index].id!)),
                          ),
                          BlocProvider(
                            create: (context) => getIt<EpisodesBloc>()
                              ..add(EpisodesEvent.getLatestEpisodes(
                                  comicState.comics[index].id!)),
                          ),
                        ],
                        child: BlocBuilder<GenreBloc, GenreState>(
                          buildWhen: (previous, current) => previous != current,
                          builder: (context, state) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 18.0.w, horizontal: 8.h),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      height: 140.h,
                                      width: 120.w,
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (BuildContext
                                                          context) =>
                                                      DetailsScreen(
                                                          comicId: comicState
                                                              .comics[index]
                                                              .id!)));
                                        },
                                        child: ImageWidget(
                                          image: comicState
                                              .comics[index].coverPhoto,
                                        ),
                                      )),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0.w),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(comicState.comics[index].title,
                                              style: TextStyle(
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  fontSize: 19.sp,
                                                  fontWeight: FontWeight.w800)),
                                          SizedBox(height: 9.h),
                                          BlocBuilder<GenreBloc, GenreState>(
                                            builder: (context, state) {
                                              return state.maybeMap(
                                                orElse: () => Container(),
                                                loading: (_) => Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Shimmer.fromColors(
                                                      baseColor: Colors.white30,
                                                      highlightColor:
                                                          Colors.white24,
                                                      child: Container(
                                                        height: 10.h,
                                                        width: 200.w,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.r),
                                                            color: const Color(
                                                                0xff1B2C3B)),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 8.h,
                                                    ),
                                                    Shimmer.fromColors(
                                                      baseColor: Colors.white30,
                                                      highlightColor:
                                                          Colors.white24,
                                                      child: Container(
                                                        height: 10.h,
                                                        width: 130.w,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.r),
                                                            color: const Color(
                                                                0xff1B2C3B)),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 8.h,
                                                    ),
                                                    Shimmer.fromColors(
                                                      baseColor: Colors.white30,
                                                      highlightColor:
                                                          Colors.white24,
                                                      child: Container(
                                                        height: 10.h,
                                                        width: 100.w,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.r),
                                                            color: const Color(
                                                                0xff1B2C3B)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                loaded: (genreState) {
                                                  String genre = genreState
                                                      .genres
                                                      .map((e) => e.name)
                                                      .join(",");
                                                  return Text(
                                                    genreState.genres.isEmpty
                                                        ? "No genre"
                                                        : genre,
                                                    style: TextStyle(
                                                        fontSize: 12.sp,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        letterSpacing: 2.0,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        height: 2),
                                                    maxLines: 2,
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                          SizedBox(
                                            height: 7.h,
                                          ),
                                          BlocBuilder<EpisodesBloc,
                                              EpisodesState>(
                                            builder: (context, state) {
                                              return state.maybeMap(
                                                  orElse: () => Container(),
                                                  loading: (_) =>
                                                      Shimmer.fromColors(
                                                        baseColor:
                                                            Colors.white30,
                                                        highlightColor:
                                                            Colors.white24,
                                                        child: Container(
                                                          height: 10.h,
                                                          width: 150.w,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.r),
                                                              color: const Color(
                                                                  0xff1B2C3B)),
                                                        ),
                                                      ),
                                                  loaded: (state) {
                                                    return Text(
                                                        "${state.episodes.length} Episodes",
                                                        style: TextStyle(
                                                            fontSize: 15.sp,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white));
                                                  });
                                            },
                                          ),
                                          SizedBox(
                                            height: 8.h,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
                  );
                });
          })),
    );
  }
}
