import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/application/comic_details/comic_details_bloc.dart';
import 'package:movie_app/application/save_comic/save_comic_bloc.dart';
import 'package:movie_app/domain/save_comic/save_comic.dart';
import 'package:movie_app/helper/global/error_message.dart';
import 'package:movie_app/helper/global/image_widget.dart';
import 'package:movie_app/helper/global/loading_indicator.dart';
import 'package:movie_app/injection.dart';

class SaveScreen extends StatelessWidget {
  const SaveScreen({Key? key}) : super(key: key);

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
              loading: (_) => const LoadingIndicator(),
              watchSuccess: (state) {
                final savedComics = state.saveComics;
                return FavouriteList(savedComics: savedComics);
              });
        },
      ),
    );
  }
}

class FavouriteList extends StatelessWidget {
  final List<SaveComics> savedComics;
  const FavouriteList({Key? key, required this.savedComics}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        children: List.generate(savedComics.length, (index) {
          final savedComic = savedComics[index];
          return BlocProvider(
            create: (context) => getIt<ComicDetailsBloc>()
              ..add(ComicDetailsEvent.getComicDetais(savedComic.id)),
            child: BlocBuilder<ComicDetailsBloc, ComicDetailsState>(
              builder: (context, state) {
                return state.map(
                    loading: (_) => const LoadingIndicator(),
                    loaded: (state) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Navigator.of(context).push(MaterialPageRoute(
                                //     builder: (_) => ReadingScreen(episodes: episodes)));
                              },
                              child: SizedBox(
                                height: 130,
                                width: 130,
                                child:
                                    ImageWidget(image: state.comic.coverPhoto),
                              ),
                            ),
                            Container(
                              constraints: const BoxConstraints(maxWidth: 150),
                              child: Text(
                                state.comic.title,
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            // Text("${episodes.episodeName}${episodes.episodeNumber.toString()}"),
                            const SizedBox(height: 5),
                          ],
                        ),
                      );
                    },
                    error: (_) =>
                        const ErrorMessage(message: "Error", isSliver: false));
              },
            ),
          );
        }));
  }
}
