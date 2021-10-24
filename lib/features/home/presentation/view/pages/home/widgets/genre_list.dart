import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/genre/presentation/bloc/genre_bloc.dart';
import 'package:movie_app/features/home/presentation/view/pages/home/home_screen.dart';
import 'package:movie_app/features/home/presentation/view/pages/home/widgets/shimmer_card.dart';

class GenreList extends StatelessWidget {
  const GenreList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenreBloc, GenreState>(
      builder: (context, state) {
        if (state is GenreLoading) {
          return const ShimmerCard();
        }

        if (state is GenreSuccess) {
          return SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: state.genres
                    .map((e) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => GenreListView(genre: e)));
                                },
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundColor: Colors.red.withOpacity(0.3),
                                  child: Icon(
                                    Icons.theater_comedy,
                                    size: 35,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Text(e.name)
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
          );
        }
        return SliverToBoxAdapter(child: Container());
      },
    );
  }
}
