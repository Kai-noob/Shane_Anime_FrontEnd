import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/presentation/bloc/bloc/recent_bloc.dart';
import 'package:movie_app/features/home/presentation/bloc/home_bloc.dart';

import '../../../../../../../core/global/loading_indicator.dart';

import 'recent_item.dart';

class RecentList extends StatelessWidget {
  RecentList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecentBloc, RecentState>(
      builder: (context, state) {
        if (state is RecentLoading) {
          return LoadingIndicator();
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
