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

class ImagesLoading extends DetailsState {}

class ImagesError extends DetailsState {
  final String message;

  ImagesError({required this.message});

  @override
  // TODO: implement props
  List<Object> get props => [message];
}

class EpisodeLoaded extends DetailsState {
  final List<Episodes> episodes;

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
