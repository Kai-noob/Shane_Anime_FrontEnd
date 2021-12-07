part of 'comment_bloc.dart';

@freezed
class CommentEvent with _$CommentEvent {
  const factory CommentEvent.commentsReceived(
          Either<UserActionsFailure, List<Comments>> failureOrComments) =
      _CommentsReceived;
  const factory CommentEvent.fetchComment(String episodeId) = _FetchComment;
  const factory CommentEvent.fetchComments(String episodeId) = _FetchComments;
  const factory CommentEvent.addComment(
      String userId, String comment, String episodeId) = _AddComment;
}
