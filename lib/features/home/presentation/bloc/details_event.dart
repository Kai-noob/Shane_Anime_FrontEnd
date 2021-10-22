part of 'details_bloc.dart';

abstract class DetailsEvent extends Equatable {
  const DetailsEvent();

  @override
  List<Object> get props => [];
}

class FetchEpisode extends DetailsEvent {
  final String comicId;

  const FetchEpisode(this.comicId);

  @override
  List<Object> get props => [comicId];
}

class FetchImages extends DetailsEvent {
  final String comicId;
  final String episodeName;

  FetchImages(this.comicId, this.episodeName);

  @override
  List<Object> get props => [comicId, episodeName];
}
