part of 'filterepisode_bloc.dart';

abstract class FilterepisodeState extends Equatable {
  const FilterepisodeState();

  @override
  List<Object> get props => [];
}

class FilterepisodeInitial extends FilterepisodeState {}



class FilteredEpisodesLoaded extends FilterepisodeState {
  final List<Episode> filterEpisodes;

  const FilteredEpisodesLoaded({required this.filterEpisodes});

  @override
  List<Object> get props => [filterEpisodes];
}

class FilterError extends FilterepisodeState {
  final String message;

  const FilterError({required this.message});

  @override
  List<Object> get props => [message];
}
