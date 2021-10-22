import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../bloc/hot_bloc.dart';

import 'recent_item.dart';
import 'shimmer_card.dart';

class HotList extends StatelessWidget {
  const HotList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotBloc, HotState>(
      builder: (context, state) {
        if (state is HotComicLoading) {
          return const ShimmerCard();
        }
        if (state is HotComicError) {
          return Center(
            child: Text(state.message),
          );
        }
        if (state is HotComicLoaded) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: state.hotComics
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
