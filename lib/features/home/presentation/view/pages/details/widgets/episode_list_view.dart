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
  const EpisodeListView({
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
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  tileColor: episodes.contains(state.episodes[index])
                      ? Colors.grey.withOpacity(0.1)
                      : null,
                  title: Text(
                    " ${state.episodes[index].episodeName}"
                    "${state.episodes[index].episodeNumber.toString()}",
                    style: TextStyle(
                        color: episodes.contains(state.episodes[index])
                            ? Colors.grey.shade50
                            : Colors.white,
                        fontWeight: episodes.contains(state.episodes[index])
                            ? FontWeight.w100
                            : null),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) =>
                            ReadingScreen(episodes: state.episodes[index])));
                  },
                  // trailing: episodes.last == state.episodes[index]
                  //     ? const Visibility(visible: true, child: Icon(Icons.done))
                  //     : const Visibility(
                  //         visible: false, child: Icon(Icons.done)),
                  trailing: episodes.isEmpty
                      ? null
                      : episodes.last == state.episodes[index]
                          ? Visibility(
                              visible: true, child: Icon(Ionicons.eye_outline))
                          : Visibility(
                              visible: false,
                              child: Icon(Ionicons.eye_outline)),
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
