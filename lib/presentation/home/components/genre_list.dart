import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/genre/genre_bloc.dart';
import '../../../helper/global/error_message.dart';
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
            orElse: () => const ErrorMessage(message: "Error", isSliver: true),
            loading: (_) => const ShimmerGenre(),
            error: (_) => const Text("Error"),
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
