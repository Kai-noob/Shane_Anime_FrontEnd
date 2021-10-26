part of 'recent_bloc.dart';

abstract class RecentEvent extends Equatable {
  const RecentEvent();

  @override
  List<Object> get props => [];
}

class FetchRecentEpisode extends RecentEvent {}

class FilterEpisode extends RecentEvent {
  final DateTime dateTime;

  FilterEpisode(this.dateTime);

  @override
  List<Object> get props => [dateTime];
}
