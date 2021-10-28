part of 'daily_update_bloc.dart';

abstract class DailyUpdateEvent extends Equatable {
  const DailyUpdateEvent();

  @override
  List<Object> get props => [];
}

class FetchDailyEpisode extends DailyUpdateEvent {}

class FilterEpisodeEvent extends DailyUpdateEvent {
  final String dateTime;

  const FilterEpisodeEvent(this.dateTime);

  @override
  List<Object> get props => [dateTime];
}
