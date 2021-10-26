import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/global/error_widget.dart';
import '../../../../bloc/recent_episode/recent_bloc.dart';
import 'shimmer_card.dart';

import 'comic_card.dart';

class RecentList extends StatelessWidget {
  const RecentList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecentBloc, RecentState>(
      builder: (context, state) {
        if (state is RecentLoading) {
          return const ShimmerCard();
        }
        if (state is RecentError) {
          return ErrorMessage(
            message: state.message,
            isSliver: true,
          );
        }
        if (state is RecentLoaded) {
          return SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: state.recentEpisodes
                    .map((e) => RecentCard(episodes: e))
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
