import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../bloc/complete_bloc.dart';

import 'recent_item.dart';
import 'shimmer_card.dart';

class CompleteList extends StatelessWidget {
  const CompleteList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompleteBloc, CompleteState>(
      builder: (context, state) {
        if (state is CompleteLoading) {
          return const ShimmerCard();
        }

        if (state is CompleteLoaded) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: state.completeComics
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
