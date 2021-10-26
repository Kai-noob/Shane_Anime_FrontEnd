import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/global/error_message.dart';
import '../../../../bloc/complete_comic/complete_bloc.dart';

import 'comic_card.dart';
import 'shimmer_card.dart';

class CompleteList extends StatelessWidget {
  const CompleteList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompleteBloc, CompleteState>(
      builder: (context, state) {
        if (state is CompleterError) {
          return ErrorMessage(
            message: state.message,
            isSliver: true,
          );
        }
        if (state is CompleteLoading) {
          return const ShimmerCard();
        }

        if (state is CompleteLoaded) {
          return SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: state.completeComics
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
