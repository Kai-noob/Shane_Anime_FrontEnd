part of 'user_actions_bloc.dart';

@freezed
class UserActionsState with _$UserActionsState {
  const factory UserActionsState.initial() = _Initial;
  const factory UserActionsState.loading() = _Loading;
  const factory UserActionsState.profileLoaded(AppUser profile) =
      _ProfileLoaded;
  const factory UserActionsState.error(UserActionsFailure failure) = _Error;
  const factory UserActionsState.likeStatus(bool isLiked) = _LikeStatus;

  const factory UserActionsState.updateNameSuccess(AppUser user) =
      _UpdateNameSuccess;
  const factory UserActionsState.updateImageSuccess(AppUser user) =
      _UpdateImageSuccess;
  const factory UserActionsState.deleteSuccess() = _DeleteSuccess;
  const factory UserActionsState.addSuccess() = _AddSuccess;
  const factory UserActionsState.userCommentsLoaded(List<Comments> comments) =
      _UserCommentsLoaded;
}
