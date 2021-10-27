part of 'recent_bloc.dart';

abstract class RecentEvent extends Equatable {
  const RecentEvent();

  @override
  List<Object> get props => [];
}

class FetchRecentEpisode extends RecentEvent {}

class FilterEpisodeEvent extends RecentEvent {
  final DateTime dateTime;

  const FilterEpisodeEvent(this.dateTime);

  @override
  List<Object> get props => [dateTime];
}
