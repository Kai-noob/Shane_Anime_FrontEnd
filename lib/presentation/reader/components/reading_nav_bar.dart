import 'package:badges/badges.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:unity_ads_plugin/unity_ads.dart';
import '../../../application/bloc/comment_bloc.dart';
import '../../../application/comic_reader/comic_reader_bloc.dart';

import '../../../application/user_actions/user_actions_bloc.dart';

import '../../../domain/episodes/episodes.dart';
import '../../../injection.dart';
import '../../comments/comment_screen.dart';

class ReadingNavBar extends StatelessWidget {
  final Episodes episode;

  const ReadingNavBar({Key? key, required this.episode}) : super(key: key);

  int getLikesCount(Map<String, dynamic> likes) {
    int count = 0;
    for (final val in likes.values) {
      if (val == true) count += 1;
    }
    return count;
  }

  @override
  Widget build(BuildContext context) {
    UnityAds.init(
      gameId: AdManager.gameId,
      testMode: true,
      listener: (state, args) => print('Init Listener: $state => $args'),
    );

    return BlocProvider(
      create: (context) => getIt<UserActionsBloc>()
        ..add(UserActionsEvent.checkLikeStatus(episode)),
      child: BlocBuilder<UserActionsBloc, UserActionsState>(
        builder: (context, state) {
          return state.maybeMap(
              orElse: () => Container(),
              likeStatus: (status) {
                final isLiked = status.isLiked;
                return SizedBox(
                    height: 60.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: IconButton(
                              onPressed: () {
                                UnityAds.showVideoAd(
                                  placementId:
                                      AdManager.interstitialVideoAdPlacementId,
                                  listener: (state, args) => print(
                                      'Interstitial Video Listener: $state => $args'),
                                );
                                episode.episodeNumber == 1
                                    ? null
                                    : context.read<ComicReaderBloc>().add(
                                        ComicReaderEvent.changePdf(
                                            episode.comicId,
                                            episode.episodeName,
                                            episode.episodeNumber - 1));
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: episode.episodeNumber == 1
                                    ? Colors.white10
                                    : Colors.white,
                              )),
                        ),
                        Expanded(
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        BlocProvider(
                                          create: (context) =>
                                              getIt<CommentBloc>(),
                                          child: CommentsScreen(
                                            episodeId: episode.id!,
                                          ),
                                        )));
                              },
                              icon: const Icon(
                                  Ionicons.chatbox_ellipses_outline)),
                        ),
                        Expanded(
                          child: Badge(
                            elevation: 0.0,
                            badgeColor: Colors.white,
                            position: BadgePosition.topEnd(top: -10, end: 10),
                            badgeContent: Text(
                              "${getLikesCount(episode.like)}",
                              style: const TextStyle(color: Colors.black),
                            ),
                            child: IconButton(
                                onPressed: () {
                                  context.read<UserActionsBloc>().add(
                                      UserActionsEvent.likeEpisodes(
                                          !isLiked, episode));
                                },
                                icon: Icon(
                                  isLiked
                                      ? Icons.thumb_up
                                      : Icons.thumb_up_outlined,
                                )),
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                              onPressed: () {
                                UnityAds.showVideoAd(
                                  placementId:
                                      AdManager.interstitialVideoAdPlacementId,
                                  listener: (state, args) => print(
                                      'Interstitial Video Listener: $state => $args'),
                                );
                                episode.episodeNumber == episode.episodeCount
                                    ? null
                                    : context.read<ComicReaderBloc>().add(
                                        ComicReaderEvent.changePdf(
                                            episode.comicId,
                                            episode.episodeName,
                                            episode.episodeNumber + 1));
                              },
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: episode.episodeNumber ==
                                        episode.episodeCount
                                    ? Colors.white10
                                    : Colors.white,
                              )),
                        ),
                      ],
                    ));
              });
        },
      ),
    );
  }
}

class AdManager {
  static String get gameId {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return '4498368';
    }
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return 'your_ios_game_id';
    }
    return '';
  }

  static String get interstitialVideoAdPlacementId {
    return 'Chapter_End';
  }
}
