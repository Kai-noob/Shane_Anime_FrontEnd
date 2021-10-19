import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ionicons/ionicons.dart';
import 'package:movie_app/features/home/presentation/bloc/details/bloc/details_bloc.dart';
import '../../../../../../../core/global/loading_indicator.dart';

import '../../reading/binding/photo_binding.dart';
import '../../reading/reading_screen.dart';

class EpisodeListView extends StatelessWidget {
  final String comicId;
  EpisodeListView({
    Key? key,
    required this.comicId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsBloc, DetailsState>(
      builder: (context, state) {
        if (state is DetailsLoading) {
          return LoadingIndicator();
        }
        if (state is DetailsLoaded) {
          return ListView.builder(
            itemCount: state.episodes.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(state.episodes[index].episodeName),
                onTap: () {
                  // Get.to(
                  //     () => ReadingScreen(
                  //         photos: _episodeController.episodeList[index]),
                  //     binding: PhotoBinding());
                },
                leading: const Icon(
                  Ionicons.book,
                  color: Colors.deepPurpleAccent,
                ),
                trailing: const Text("Free"),
              );
            },
          );
        }
        return Container();
      },
    );
  }
}
