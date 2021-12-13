import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/application/episodes/episodes_bloc.dart';
import 'package:movie_app/application/genre/genre_bloc.dart';
import 'package:movie_app/helper/global/loading_indicator.dart';
import 'package:readmore/readmore.dart';
import 'package:shimmer/shimmer.dart';

import '../../../application/save_comic/save_comic_bloc.dart';
import '../../../domain/comic/comic.dart';
import '../../../injection.dart';
import 'episodes_list_view.dart';

class DetailsBody extends StatefulWidget {
  const DetailsBody({
    Key? key,
    required this.comic,
  }) : super(key: key);

  final Comic comic;

  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  bool isDecending = false;
  @override
  Widget build(BuildContext context) {
    // String genre = widget.comic.genres!.map((e) => e.name).join(".");

    return SafeArea(
        child: CustomScrollView(
      physics: const ClampingScrollPhysics(),
      slivers: [
        SliverAppBar(
          backgroundColor: const Color(0xFF2F323E),
          elevation: 0.0,
          expandedHeight: 350,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: [FavButton(comicId: widget.comic.id!)],
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.pin,
            background: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.comic.coverPhoto),
                      fit: BoxFit.cover)),
              child: CachedNetworkImage(
                imageUrl: widget.comic.coverPhoto,
                imageBuilder: (context, imageProvider) => Container(
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
                          Colors.black.withOpacity(.3)
                        ])),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          BlocBuilder<GenreBloc, GenreState>(
                            builder: (context, state) {
                              return state.maybeMap(
                                orElse: () => Container(),
                                loading: (_) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Shimmer.fromColors(
                                      baseColor: Colors.white30,
                                      highlightColor: Colors.white24,
                                      child: Container(
                                        height: 10.h,
                                        width: 200.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.r),
                                            color: const Color(0xff1B2C3B)),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Shimmer.fromColors(
                                      baseColor: Colors.white30,
                                      highlightColor: Colors.white24,
                                      child: Container(
                                        height: 10.h,
                                        width: 150.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.r),
                                            color: const Color(0xff1B2C3B)),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Shimmer.fromColors(
                                      baseColor: Colors.white30,
                                      highlightColor: Colors.white24,
                                      child: Container(
                                        height: 10.h,
                                        width: 200.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.r),
                                            color: const Color(0xff1B2C3B)),
                                      ),
                                    ),
                                  ],
                                ),
                                loaded: (genreState) {
                                  String genre = genreState.genres
                                      .map((e) => e.name)
                                      .join("/");
                                  return Text(
                                    genreState.genres.isEmpty
                                        ? "No genre"
                                        : genre,
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2.0,
                                        height: 2),
                                  );
                                },
                              );
                            },
                          ),
                          Text(widget.comic.title,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: "HeaderFont",
                                fontSize: 30.sp,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                placeholder: (context, url) => Container(
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/logo/logo.png")),
                      color: Colors.grey.shade300),
                ),
                errorWidget: (context, url, error) =>
                    const Icon(Icons.image_outlined, size: 35),
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          sliver: SliverToBoxAdapter(
            child: ReadMoreText(
              widget.comic.review,
              style: TextStyle(height: 2, fontSize: 15.sp),
              textAlign: TextAlign.justify,
              trimLength: 100,
              trimCollapsedText: 'See More',
              trimExpandedText: 'See less',
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
          sliver: SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Chapters",
                  style:
                      TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w800),
                ),
                TextButton.icon(
                    label: const Text("Sort"),
                    onPressed: () {
                      setState(() {
                        isDecending = !isDecending;
                      });
                    },
                    icon: const Icon(Icons.swap_vert))
              ],
            ),
          ),
        ),
        BlocBuilder<EpisodesBloc, EpisodesState>(
          builder: (context, state) {
            return state.maybeMap(
                orElse: () => SliverToBoxAdapter(child: Container()),
                loading: (_) =>
                    const SliverToBoxAdapter(child: LoadingIndicator()),
                loaded: (state) => EpisodeListView(
                      episodes: state.episodes,
                      isDecending: isDecending,
                    ));
          },
        )
        // DetailsTitle(comicModel: comicModel),
      ],
    ));
  }
}

class FavButton extends StatelessWidget {
  const FavButton({
    Key? key,
    required this.comicId,
  }) : super(key: key);

  final String comicId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SaveComicBloc>()..add(const SaveComicEvent.watchSaved()),
      child: BlocBuilder<SaveComicBloc, SaveComicState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return state.maybeMap(
              orElse: () => Container(),
              error: (_) => const Text("Error"),
              watchSuccess: (state) {
                final isSaved = state.saveComics.where((e) => e.id == comicId);

                return IconButton(
                    onPressed: () {
                      context.read<SaveComicBloc>().add(isSaved.isEmpty
                          ? SaveComicEvent.saveComic(comicId)
                          : SaveComicEvent.removeComic(comicId));
                    },
                    icon: Icon(
                      isSaved.isEmpty ? Icons.bookmark_outline : Icons.bookmark,
                      color: Colors.white,
                    ));
              });
        },
      ),
    );
  }
}
