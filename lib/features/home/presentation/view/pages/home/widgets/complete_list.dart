import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../core/global/error_message.dart';
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
        if (state is LimitCompleteError) {
          return ErrorMessage(
            message: state.message,
            isSliver: true,
          );
        }
        if (state is LimitCompleteLoading) {
          return const ShimmerCard();
        }

        if (state is LimitCompleteLoaded) {
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
