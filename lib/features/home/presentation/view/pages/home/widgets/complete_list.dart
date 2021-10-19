import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/presentation/bloc/home_bloc.dart';

import 'package:movie_app/features/home/presentation/view/pages/details/details_screen.dart';
import 'package:movie_app/features/home/presentation/view/pages/home/widgets/recent_item.dart';
import '../../../../../../../core/global/image_widget.dart';
import '../../../../../../../core/global/loading_indicator.dart';

class CompleteList extends StatelessWidget {
  CompleteList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is HomeLoading) {
          return LoadingIndicator();
        }
        if (state is HomeLoaded) {
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
