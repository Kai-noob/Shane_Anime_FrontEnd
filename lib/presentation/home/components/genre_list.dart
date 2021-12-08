import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../helper/global/cutom_error_widget.dart';
import '../../../application/genre/genre_bloc.dart';
import 'genre_item.dart';
import 'shimmer_genre.dart';

class GenreList extends StatelessWidget {
  const GenreList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenreBloc, GenreState>(
        builder: (context, state) => state.maybeMap(
            orElse: () => SliverToBoxAdapter(child: Container()),
            loading: (_) => const ShimmerGenre(),
            error: (error) => SliverToBoxAdapter(
                  child: CustomError(
                      errorMessage: error.failure.maybeMap(
                          unexcepted: (_) => "Unexcepted Error occured.",
                          notFound: (_) => "No Saved Mangas",
                          orElse: () => "Unknown Error"),
                      errorImage: "assets/logo/error.svg"),
                ),
            loaded: (state) => SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: state.genres
                            .map((e) => GenreItem(genre: e))
                            .toList()),
                  ),
                )));
  }
}
