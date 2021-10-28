part of 'daily_update_bloc.dart';

abstract class DailyUpdateState extends Equatable {
  const DailyUpdateState();

  @override
  List<Object> get props => [];
}

class DailyUpdateLoading extends DailyUpdateState {}

class DailyUpdateSuccess extends DailyUpdateState {
  final List<Episode> recentEpisodes;

  const DailyUpdateSuccess({required this.recentEpisodes});

  @override
  List<Object> get props => [recentEpisodes];
}

class DailyUpdateError extends DailyUpdateState {
  final String message;

  const DailyUpdateError({required this.message});

  @override
  List<Object> get props => [message];
}
