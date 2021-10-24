part of 'details_bloc.dart';

abstract class DetailsState extends Equatable {
  const DetailsState();

  @override
  List<Object> get props => [];
}

class DetailsInitial extends DetailsState {}

class ImagesLoaded extends DetailsState {
  final List<String> images;

  ImagesLoaded({required this.images});

  @override
  List<Object> get props => [images];
}

class PdfLoaded extends DetailsState {
  final String pdf;

  PdfLoaded({required this.pdf});

  @override
  List<Object> get props => [pdf];
}

class PdfError extends DetailsState {
  final String message;

  PdfError({required this.message});

  @override
  // TODO: implement props
  List<Object> get props => [message];
}

class ImagesLoading extends DetailsState {}

class ImagesError extends DetailsState {
  final String message;

  ImagesError({required this.message});

  @override
  // TODO: implement props
  List<Object> get props => [message];
}

class EpisodeLoaded extends DetailsState {
  final List<RecentEpisode> episodes;

  const EpisodeLoaded({required this.episodes});

  @override
  List<Object> get props => [episodes];
}

class EpisodeLoading extends DetailsState {}

class EpisodeError extends DetailsState {
  final String message;

  const EpisodeError({required this.message});

  @override
  List<Object> get props => [message];
}

class DetailsGenreLoaded extends DetailsState {
  final List<Genre> genres;

  const DetailsGenreLoaded({required this.genres});

  @override
  List<Object> get props => [genres];
}

class GenreLoading extends DetailsState {}

class GenreError extends DetailsState {
  final String message;

  const GenreError({required this.message});

  @override
  List<Object> get props => [message];
}
