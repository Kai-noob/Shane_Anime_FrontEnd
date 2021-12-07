import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/application/episodes/episodes_bloc.dart';
import 'package:movie_app/helper/global/cutom_error_widget.dart';

import '../../../application/auth/bloc/auth_bloc.dart';
import '../../../application/user_actions/user_actions_bloc.dart';
import '../../../domain/core/errors.dart';
import '../../../helper/global/loading_indicator.dart';
import '../../../injection.dart';
import 'package:timeago/timeago.dart';

class UserCommentsScreen extends StatelessWidget {
  const UserCommentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _authState = context.read<AuthBloc>().state;

    final currentUser = _authState.maybeMap(
      authenticated: (_) => _.currentUser,
      orElse: () => throw NotAuthenticatedError(),
    );
    return BlocProvider(
      create: (context) => getIt<UserActionsBloc>()
        ..add(UserActionsEvent.fetchUserComments(currentUser.id)),
      child: BlocBuilder<UserActionsBloc, UserActionsState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => Container(),
            error: (error) => CustomError(
                errorMessage: error.failure.maybeMap(
                    unableToFetch: (_) => "Unexcepted Error occured.",
                    notFound: (_) => "No Saved Mangas",
                    orElse: () => "Unknown Error"),
                errorImage: "assets/logo/error.svg"),
            loading: (_) => const LoadingIndicator(),
            userCommentsLoaded: (commentState) {
              if (commentState.comments.isEmpty) {
                return Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 70.r,
                        backgroundColor: const Color(0xff1B2C3B),
                        child: Icon(
                          Ionicons.chatbox_ellipses_outline,
                          color: Colors.white,
                          size: 80.w,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "No Comments.",
                        style: TextStyle(
                          fontSize: 18.sp,
                        ),
                      )
                    ],
                  ),
                );
              }
              return ListView.builder(
                itemCount: commentState.comments.length,
                itemBuilder: (BuildContext context, int index) {
                  return BlocProvider(
                    create: (context) => getIt<EpisodesBloc>()
                      ..add(EpisodesEvent.getEpisode(
                          commentState.comments[index].episodeId)),
                    child: BlocBuilder<EpisodesBloc, EpisodesState>(
                      builder: (context, state) {
                        return state.maybeMap(
                            orElse: () => Container(),
                            episodeLoaded: (episodeState) {
                              return Container(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 100.h,
                                      width: 80.w,
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            episodeState.episodes.coverPhoto!,
                                        fit: BoxFit.cover,
                                        placeholder: (context, url) =>
                                            Container(
                                          decoration: BoxDecoration(
                                              image: const DecorationImage(
                                                  image: AssetImage(
                                                      "assets/logo/logo.png")),
                                              color: Colors.grey.shade200),
                                        ),
                                        errorWidget: (context, url, error) =>
                                            Icon(Icons.warning_outlined,
                                                size: 35.w),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            episodeState.episodes.title!,
                                            style: TextStyle(
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            height: 4.h,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                episodeState
                                                    .episodes.episodeName,
                                                style: TextStyle(
                                                    fontSize: 10.sp,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  episodeState
                                                      .episodes.episodeNumber
                                                      .toString(),
                                                  style: TextStyle(
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 6.h),
                                          Text(
                                            commentState
                                                .comments[index].comment,
                                            style: TextStyle(
                                                fontSize: 15.sp,
                                                height: 2.h,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 8.h,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              GestureDetector(
                                                child: Text("Delete",
                                                    style: TextStyle(
                                                        color: Colors.red,
                                                        fontSize: 13.sp)),
                                                onTap: () {
                                                  context
                                                      .read<UserActionsBloc>()
                                                      .add(UserActionsEvent
                                                          .deleteComment(
                                                              commentState
                                                                  .comments[
                                                                      index]
                                                                  .commentId!));
                                                },
                                              ),
                                              Text(
                                                format(commentState
                                                    .comments[index].timestamp),
                                                style: const TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });
                      },
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
