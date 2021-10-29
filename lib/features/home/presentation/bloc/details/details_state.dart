part of 'details_bloc.dart';

abstract class DetailsState extends Equatable {
  const DetailsState();

  @override
  List<Object> get props => [];
}

class DetailsInitial extends DetailsState {}

class PDFLoading extends DetailsState {}

class PdfLoaded extends DetailsState {
  final String pdf;

  const PdfLoaded({required this.pdf});

  @override
  List<Object> get props => [pdf];
}

class PdfError extends DetailsState {
  final String message;

  const PdfError({required this.message});

  @override
  List<Object> get props => [message];
}

class ImagesLoading extends DetailsState {}

class ImagesLoaded extends DetailsState {
  final List<String> images;

  const ImagesLoaded({required this.images});

  @override
  List<Object> get props => [images];
}

class ImagesError extends DetailsState {
  final String message;

  const ImagesError({required this.message});

  @override
  List<Object> get props => [message];
}

class EpisodeLoaded extends DetailsState {
  final List<Episode> episodes;

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

class DetailsGenreLoading extends DetailsState {}

class GenreError extends DetailsState {
  final String message;

  const GenreError({required this.message});

  @override
  List<Object> get props => [message];
}

class CheckPdFOrImages extends DetailsState {
  final bool check;

  CheckPdFOrImages({required this.check});

  @override
  List<Object> get props => [check];
}
