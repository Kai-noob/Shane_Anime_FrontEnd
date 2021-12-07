part of 'user_actions_bloc.dart';

@freezed
class UserActionsEvent with _$UserActionsEvent {
  const factory UserActionsEvent.fetchProfile() = _FetchProfile;
  const factory UserActionsEvent.likeEpisodes(
      bool likeStatus, Episodes episodes) = _LikeEpisodes;
  const factory UserActionsEvent.checkLikeStatus(Episodes episodes) =
      _CheckLikeStatus;

  const factory UserActionsEvent.fetchUserComments(String userId) =
      _FetchUserComments;
  const factory UserActionsEvent.commentsReceived(
          Either<UserActionsFailure, List<Comments>> failureOrComments) =
      _CommentsReceived;

  const factory UserActionsEvent.profileReceived(
      Either<UserActionsFailure, AppUser> failureOrProfile) = _ProfileReceived;
  const factory UserActionsEvent.editName(String name) = _EditName;
  const factory UserActionsEvent.editImage(String image) = _EditImage;
  const factory UserActionsEvent.deleteComment(String commentId) =
      _DeleteComment;
  const factory UserActionsEvent.addComment(
      String userId, String comment, String episodeId) = _AddComment;
}
