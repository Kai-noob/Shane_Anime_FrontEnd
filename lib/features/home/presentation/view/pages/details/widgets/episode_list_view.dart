import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:movie_app/core/global/error_message.dart';

import '../../reading/reading_screen.dart';
import '../../../../bloc/details/details_bloc.dart';
import '../../../../../../../core/global/loading_indicator.dart';

class EpisodeListView extends StatelessWidget {
  final String comicId;
  const EpisodeListView({
    Key? key,
    required this.comicId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsBloc, DetailsState>(
      builder: (context, state) {
        if (state is EpisodeLoading) {
          return const SliverToBoxAdapter(child: LoadingIndicator());
        }
        if (state is EpisodeError) {
          return ErrorMessage(
            message: state.message,
            isSliver: true,
          );
        }
        if (state is EpisodeLoaded) {
          return SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return ListTile(
                title: Text(state.episodes[index].episodeName),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) =>
                          ReadingScreen(episodes: state.episodes[index])));
                },
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              NetworkImage(state.episodes[index].coverPhoto))),
                ),
              );
            }, childCount: state.episodes.length),
          );
        }
        return SliverToBoxAdapter(child: Container());
      },
    );
  }
}
