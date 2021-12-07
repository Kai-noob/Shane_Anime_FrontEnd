import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/application/bloc/comment_bloc.dart';
import 'package:movie_app/domain/core/errors.dart';

import '../../application/auth/bloc/auth_bloc.dart';
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
  final TextEditingController _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _authState = context.read<AuthBloc>().state;
    final currentUser = _authState.maybeMap(
      authenticated: (_) => _.currentUser,
      orElse: () => throw NotAuthenticatedError(),
    );

    return BlocProvider(
      create: (context) => getIt<CommentBloc>()
        ..add(CommentEvent.fetchComment(widget.episodeId)),
      child: BlocConsumer<CommentBloc, CommentState>(
        listener: (context, state) => state.maybeMap(
            orElse: () {},
            addSuccess: (_) {
              context
                  .read<CommentBloc>()
                  .add(CommentEvent.fetchComment(widget.episodeId));
            }),
        builder: (context, state) {
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
                    child: state.maybeMap(
                  orElse: () => Container(),
                  loading: (_) => const LoadingIndicator(),
                  error: (_) => const Text("Error"),
                  addSuccess: (_) => const LoadingIndicator(),
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
                                Ionicons.chatbox_ellipses_outline,
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
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0.h),
                          child: ListTile(
                            leading: CircleAvatar(
                              maxRadius: 30.r,
                              backgroundImage: NetworkImage(
                                  commentstate.comments[index].user!.photoUrl),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(commentstate.comments[index].comment),
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
                            title: Text(
                                commentstate.comments[index].user!.username),
                          ),
                        );
                      },
                    );
                  },
                )),
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
                    onPressed: () async {
                      _commentController.text.isNotEmpty
                          ? context.read<CommentBloc>().add(
                              CommentEvent.addComment(currentUser.id,
                                  _commentController.text, widget.episodeId))
                          : null;

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
        },
      ),
    );
  }
}
