part of 'recent_bloc.dart';

abstract class RecentState extends Equatable {
  const RecentState();

  @override
  List<Object> get props => [];
}

class RecentInitial extends RecentState {}

class RecentLoading extends RecentState {}

class RecentLoaded extends RecentState {
  final List<RecentEpisode> recentEpisodes;

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
