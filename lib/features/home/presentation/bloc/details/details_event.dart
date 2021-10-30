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

class CheckPdfOrImagesEvent extends DetailsEvent {
  final String comicId;
  final String episodeName;
  final int episodeNumber;

  const CheckPdfOrImagesEvent(
      this.comicId, this.episodeName, this.episodeNumber);

  @override
  List<Object> get props => [comicId, episodeName, episodeNumber];
}
