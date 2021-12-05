part of 'comment_bloc.dart';

@freezed
class CommentState with _$CommentState {
  const factory CommentState.initial() = _Initial;
  const factory CommentState.addSuccess() = _AddSuccess;
  const factory CommentState.commentsLoaded(List<Comments> comments) =
      _CommentsLoaded;
  const factory CommentState.loading() = _Loading;
  const factory CommentState.error() = _Error;
}
