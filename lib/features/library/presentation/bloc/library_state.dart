part of 'library_bloc.dart';

abstract class LibraryState extends Equatable {
  const LibraryState();

  @override
  List<Object> get props => [];
}

class LibraryInitial extends LibraryState {}

class FavouriteComicLoading extends LibraryState {}

class FavouriteComicError extends LibraryState {
  final String message;

  FavouriteComicError({required this.message});

  @override
  // TODO: implement props
  List<Object> get props => [message];
}

class AddedToFavoruite extends LibraryState {}

class FavouriteComicSuccess extends LibraryState {
  final List<FavouriteComic> favouriteComics;

  FavouriteComicSuccess({required this.favouriteComics});

  @override
  // TODO: implement props
  List<Object> get props => [favouriteComics];
}
