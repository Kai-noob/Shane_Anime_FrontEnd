part of 'recent_bloc.dart';

abstract class RecentState extends Equatable {
  const RecentState();

  @override
  List<Object> get props => [];
}

class RecentInitial extends RecentState {}

class RecentLoading extends RecentState {}

class RecentLoaded extends RecentState {
  final List<Episode> recentEpisodes;

  const RecentLoaded({required this.recentEpisodes});

  @override
  List<Object> get props => [recentEpisodes];
}

class RecentError extends RecentState {
  final String message;

  const RecentError({required this.message});

  @override
  List<Object> get props => [message];
}

class FilteredEpisodesLoaded extends RecentState {
  final List<Episode> filterEpisodes;

  const FilteredEpisodesLoaded({required this.filterEpisodes});

  @override
  List<Object> get props => [filterEpisodes];
}

class FilterError extends RecentState {
  final String message;

  const FilterError({required this.message});

  @override
  List<Object> get props => [message];
}
