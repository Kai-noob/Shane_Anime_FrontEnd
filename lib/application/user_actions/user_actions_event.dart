part of 'user_actions_bloc.dart';

@freezed
class UserActionsEvent with _$UserActionsEvent {
  const factory UserActionsEvent.fetchProfile() = _FetchProfile;
}
