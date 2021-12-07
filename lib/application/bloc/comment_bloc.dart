import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:movie_app/domain/user_actions/comment.dart';
import 'package:movie_app/domain/user_actions/i_user_actions_repository.dart';
import 'package:movie_app/domain/user_actions/user_actions_failure.dart';

part 'comment_event.dart';
part 'comment_state.dart';
part 'comment_bloc.freezed.dart';

@injectable
class CommentBloc extends Bloc<CommentEvent, CommentState> {
  final IUserActionsRepository _userActionsRepo;
  // StreamSubscription<Either<UserActionsFailure, List<Comments>>>?
  //     commentsStream;
  CommentBloc(this._userActionsRepo) : super(const _Initial()) {
    on<CommentEvent>(_onEvent);
  }

  Future<void> _onEvent(CommentEvent event, Emitter<CommentState> emit) async {
    await event.map(commentsReceived: (e) async {
      // emit(e.failureOrComments.fold((l) => const CommentState.error(), (r) {
      //   return CommentState.commentsLoaded(r);
      // }));
    }, fetchComments: (e) async {
      // emit(const CommentState.loading());

      // await commentsStream?.cancel();
      // commentsStream = _userActionsRepo
      //     .fetchComments(e.episodeId)
      //     .listen((failureOrComments) => add(
      //           CommentEvent.commentsReceived(failureOrComments),
      //         ));
    }, addComment: (e) async {
      await _userActionsRepo.addComments(e.userId, e.comment, e.episodeId);
      emit(const CommentState.loading());

      emit(const CommentState.addSuccess());
    }, fetchComment: (e) async {
      emit(const CommentState.loading());
      final failureOrSuccess = await _userActionsRepo.fetchComment(e.episodeId);

      emit(failureOrSuccess.fold((l) => const CommentState.error(),
          (r) => CommentState.commentsLoaded(r)));
    });
  }

  // @override
  // Future<void> close() async {
  //   await commentsStream?.cancel();
  //   return super.close();
  // }
}
