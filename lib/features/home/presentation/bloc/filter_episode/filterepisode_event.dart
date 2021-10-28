part of 'filterepisode_bloc.dart';

abstract class FilterepisodeEvent extends Equatable {
  const FilterepisodeEvent();

  @override
  List<Object> get props => [];
}

class FilterEpisode extends FilterepisodeEvent {
  final String dateTime;

  const FilterEpisode(this.dateTime);

  @override
  List<Object> get props => [dateTime];
}
