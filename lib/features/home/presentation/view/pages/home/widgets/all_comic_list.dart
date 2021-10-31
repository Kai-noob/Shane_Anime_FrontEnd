import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../bloc/all_comic/allcomic_bloc.dart';
import '../../../../../../../core/global/error_message.dart';

import 'comic_card.dart';
import 'shimmer_card.dart';

class AllComicList extends StatelessWidget {
  const AllComicList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllcomicBloc, AllcomicState>(
      builder: (context, state) {
        if (state is AllLimitComicLoading) {
          return const ShimmerCard();
        }
        if (state is AllLimitComicError) {
          return ErrorMessage(
            message: state.message,
            isSliver: true,
          );
        }
        if (state is AllLimitComicLoaded) {
          return SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: state.allLimitComics
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
