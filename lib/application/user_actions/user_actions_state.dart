part of 'user_actions_bloc.dart';

@freezed
class UserActionsState with _$UserActionsState {
  const factory UserActionsState.initial() = _Initial;
  const factory UserActionsState.loading() = _Loading;
  const factory UserActionsState.loaded(Profile profile) = _Loaded;
  const factory UserActionsState.error() = _Error;
}
