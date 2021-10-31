import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/core/local/shared_pref_helper.dart';
import 'package:movie_app/features/home/domain/entities/episodes.dart';
import 'package:provider/provider.dart';

import '../../../../../../../core/global/error_message.dart';

import '../../reading/reading_screen.dart';
import '../../../../bloc/details/details_bloc.dart';
import '../../../../../../../core/global/loading_indicator.dart';

class EpisodeListView extends StatelessWidget {
  final String comicId;
  EpisodeListView({
    Key? key,
    required this.comicId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<SharedPrefHelper>(context).getLocalData();

    List<Episode> episodes =
        Provider.of<SharedPrefHelper>(context, listen: false).episodeList;

    return BlocBuilder<DetailsBloc, DetailsState>(
      builder: (context, state) {
        if (state is EpisodeLoading) {
          return const SliverToBoxAdapter(child: LoadingIndicator());
        }
        if (state is EpisodeError) {
          return ErrorMessage(
            message: state.message,
            isSliver: true,
          );
        }
        if (state is EpisodeLoaded) {
          return SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  // contentPadding: EdgeInsets.all(5),
                  // tileColor: episodes.contains(state.episodes[index])
                  //     ? Colors.red.withOpacity(0.2)
                  //     : null,
                  title: Row(
                    children: [
                      Text(state.episodes[index].episodeName),
                      Text(state.episodes[index].episodeNumber.toString()),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) =>
                            ReadingScreen(episodes: state.episodes[index])));
                  },
                  trailing: episodes.contains(state.episodes[index])
                      ? Visibility(visible: true, child: Icon(Icons.done))
                      : Visibility(visible: false, child: Icon(Icons.done)),
                  leading: SizedBox(
                    height: 50,
                    width: 50,
                    child: CachedNetworkImage(
                      imageUrl: state.episodes[index].coverPhoto,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Container(
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/logo/logo.png")),
                            color: Colors.grey.shade200),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Ionicons.warning_outline, size: 35),
                    ),
                  ),
                ),
              );
            }, childCount: state.episodes.length),
          );
        }
        return SliverToBoxAdapter(child: Container());
      },
    );
  }
}
