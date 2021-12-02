import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/domain/auth/user.dart';

import '../../application/auth/bloc/auth_bloc.dart';
import '../../application/user_actions/user_actions_bloc.dart';
import '../../domain/core/errors.dart';
import '../../helper/global/loading_indicator.dart';
import 'package:timeago/timeago.dart';

import '../../injection.dart';

class CommentsScreen extends StatefulWidget {
  final String episodeId;
  const CommentsScreen({Key? key, required this.episodeId}) : super(key: key);

  @override
  State<CommentsScreen> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  void addComment(AppUser user, String comment) {
    getIt<FirebaseFirestore>().collection('comments').add({
      'comment': comment,
      'timestamp': DateTime.now(),
      'userId': user.id,
      'episodeId': widget.episodeId,
    });
  }

  final TextEditingController _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _authState = context.read<AuthBloc>().state;
    final currentUser = _authState.maybeMap(
      authenticated: (_) => _.currentUser,
      orElse: () => throw NotAuthenticatedError(),
    );

    // print(currentUser.username);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text("Comments"),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: CommentList(episodeId: widget.episodeId),
          ),
          const Divider(
            color: Colors.white,
          ),
          ListTile(
            title: TextField(
              controller: _commentController,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: "Write Comment ..."),
            ),
            trailing: IconButton(
              onPressed: () {
                addComment(currentUser, _commentController.text);
                _commentController.clear();
              },
              icon: const Icon(Icons.send),
            ),
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}

class CommentList extends StatelessWidget {
  const CommentList({
    Key? key,
    required this.episodeId,
  }) : super(key: key);

  final String episodeId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserActionsBloc>()
        ..add(UserActionsEvent.fetchComments(episodeId)),
      child: BlocBuilder<UserActionsBloc, UserActionsState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => Container(),
            loading: (_) => const LoadingIndicator(),
            error: (_) => const Text("Error"),
            commentsLoaded: (commentstate) {
              if (commentstate.comments.isEmpty) {
                return Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50.r,
                        backgroundColor: const Color(0xff1B2C3B),
                        child: Icon(
                          Icons.chat_bubble,
                          color: Colors.white,
                          size: 50.w,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "No Comments.Be First",
                        style: TextStyle(
                          fontSize: 15.sp,
                        ),
                      )
                    ],
                  ),
                );
              }
              return ListView.builder(
                itemCount: commentstate.comments.length,
                itemBuilder: (BuildContext context, int index) {
                  return BlocProvider(
                    create: (context) => getIt<UserActionsBloc>()
                      ..add(UserActionsEvent.fetchCommentsProfile(
                          commentstate.comments[index].userId)),
                    child: BlocBuilder<UserActionsBloc, UserActionsState>(
                      builder: (context, state) {
                        return state.maybeMap(
                            orElse: () => Container(),
                            commentProfilesLoaded: (state) {
                              return Padding(
                                padding: EdgeInsets.symmetric(vertical: 12.0.h),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    maxRadius: 30.r,
                                    backgroundImage: NetworkImage(
                                        state.commentsProfiles.photoUrl),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          commentstate.comments[index].comment),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                            format(commentstate
                                                .comments[index].timestamp),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10.sp)),
                                      ),
                                    ],
                                  ),
                                  title: Text(state.commentsProfiles.username),
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
