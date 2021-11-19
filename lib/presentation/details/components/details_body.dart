import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/application/save_comic/save_comic_bloc.dart';
import 'package:movie_app/domain/comic/comic.dart';
import 'package:movie_app/helper/global/loading_indicator.dart';
import 'package:movie_app/injection.dart';
import 'dart:developer' as dev;

import 'episodes_list_view.dart';

class DetailsBody extends StatefulWidget {
  const DetailsBody({
    Key? key,
    required this.comic,
    required this.comicId,
  }) : super(key: key);

  final Comic comic;
  final String comicId;

  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  @override
  Widget build(BuildContext context) {
    String genre = widget.comic.genres!.map((e) => e.name).join(".");

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
          actions: [
            FavButton(
              comicId: widget.comic.id!,
            )
          ],
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
                          Text(genre,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  overflow: TextOverflow.ellipsis)),
                          Text(widget.comic.title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: "HeaderFont",
                                fontSize: 30,
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
                    const Icon(Ionicons.image, size: 35),
              ),
            ),
          ),
        ),
        // SliverPadding(
        //   padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        //   sliver: SliverToBoxAdapter(
        //     child: ReadMoreText(
        //       widget.comic.review,
        //       trimLines: 3,
        //       style: const TextStyle(height: 2, fontSize: 15),
        //       textAlign: TextAlign.justify,
        //       trimMode: TrimMode.Line,
        //       trimCollapsedText: 'See More',
        //       trimExpandedText: 'See less',
        //       lessStyle: const TextStyle(
        //           fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red),
        //       moreStyle: const TextStyle(
        //           fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red),
        //     ),
        //   ),
        // ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          sliver: SliverToBoxAdapter(
            child: Text(
              "Chapters",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        EpisodeListView(episodes: widget.comic.episodes!)
        // DetailsTitle(comicModel: comicModel),
      ],
    ));
  }
}

class FavButton extends StatelessWidget {
  final String comicId;
  const FavButton({
    Key? key,
    required this.comicId,
  }) : super(key: key);

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
              loading: (_) => LoadingIndicator(),
              error: (_) => Container(),
              watchSuccess: (state) {
                final isSaved = state.saveComics.where((e) => e.id == comicId);
                print(isSaved.isEmpty);
                return IconButton(
                    onPressed: () async {
                      context.read<SaveComicBloc>().add(isSaved.isEmpty
                          ? SaveComicEvent.saveComic(comicId)
                          : SaveComicEvent.removeComic(comicId));
                    },
                    icon: Icon(
                      isSaved.isEmpty ? Ionicons.heart_outline : Ionicons.heart,
                      color: Colors.white,
                    ));
              });
        },
      ),
    );
  }
}
