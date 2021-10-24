part of 'genre_bloc.dart';

abstract class GenreState extends Equatable {
  const GenreState();

  @override
  List<Object> get props => [];
}

class GenreInitial extends GenreState {}

class GenreLoading extends GenreState {}

class GenreSuccess extends GenreState {
  final List<Genre> genres;

  const GenreSuccess({required this.genres});

  @override
  // TODO: implement props
  List<Object> get props => [genres];
}

class GenreError extends GenreState {
  final String message;

  GenreError({required this.message});

  @override
  // TODO: implement props
  List<Object> get props => [message];
}

class ComicsLoading extends GenreState {}

class ComicsSuccess extends GenreState {
  final List<Comic> comics;

  const ComicsSuccess({required this.comics});

  @override
  // TODO: implement props
  List<Object> get props => [comics];
}

class ComicsError extends GenreState {
  final String message;

  ComicsError({required this.message});

  @override
  // TODO: implement props
  List<Object> get props => [message];
}
