part of 'daily_episode_bloc.dart';

@freezed
class DailyEpisodeEvent with _$DailyEpisodeEvent {
  const factory DailyEpisodeEvent.started() = _Started;
}