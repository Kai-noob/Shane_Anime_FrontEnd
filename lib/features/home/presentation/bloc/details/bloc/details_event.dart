part of 'details_bloc.dart';

abstract class DetailsEvent extends Equatable {
  const DetailsEvent();

  @override
  List<Object> get props => [];
}

class FetchEpisode extends DetailsEvent {
  final String comicId;

  FetchEpisode(this.comicId);

  @override
  // TODO: implement props
  List<Object> get props => [comicId];
}
