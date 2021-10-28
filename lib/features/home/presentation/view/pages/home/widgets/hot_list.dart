import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../core/global/error_message.dart';
import '../../../../bloc/hot_comic/hot_bloc.dart';

import 'comic_card.dart';
import 'shimmer_card.dart';

class HotList extends StatelessWidget {
  const HotList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotBloc, HotState>(
      builder: (context, state) {
        if (state is HotLimitComicLoading) {
          return const ShimmerCard();
        }
        if (state is HotLimitComicError) {
          return ErrorMessage(
            message: state.message,
            isSliver: true,
          );
        }
        if (state is HotLimitComicLoaded) {
          return SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: state.hotComics
                    .map((e) => ComicCard(comicModel: e))
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
