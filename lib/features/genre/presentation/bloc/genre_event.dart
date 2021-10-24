part of 'genre_bloc.dart';

abstract class GenreEvent extends Equatable {
  const GenreEvent();

  @override
  List<Object> get props => [];
}

class FetchGenres extends GenreEvent {}

class FetchComics extends GenreEvent {
  final String genreId;

  FetchComics(this.genreId);

  @override
  // TODO: implement props
  List<Object> get props => [genreId];
}
