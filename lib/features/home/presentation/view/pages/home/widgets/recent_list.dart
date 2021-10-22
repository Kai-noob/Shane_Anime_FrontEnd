import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../bloc/recent_bloc.dart';
import 'shimmer_card.dart';

import 'recent_item.dart';

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
        if (state is RecentLoaded) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: state.recentComics
                  .map((e) => RecentItem(comicModel: e))
                  .toList(),
            ),
          );
        }
        return Container();
      },
    );
  }
}
