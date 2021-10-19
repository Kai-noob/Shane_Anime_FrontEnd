import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/presentation/bloc/bloc/hot_bloc.dart';
import 'package:movie_app/features/home/presentation/bloc/home_bloc.dart';

import 'package:movie_app/features/home/presentation/view/pages/details/details_screen.dart';
import 'package:movie_app/features/home/presentation/view/pages/home/widgets/recent_item.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../../../core/global/image_widget.dart';
import '../../../../../../../core/global/loading_indicator.dart';

class HotList extends StatelessWidget {
  HotList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotBloc, HotState>(
      builder: (context, state) {
        if (state is HotComicLoading) {
          return LoadingIndicator();
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
