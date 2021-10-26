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

  const FavouriteComicError({required this.message});

  @override
  List<Object> get props => [message];
}

class SavedToFavourite extends LibraryState {}

class AddedToFavoruite extends LibraryState {
  final bool isFavourite;

  const AddedToFavoruite({required this.isFavourite});

  @override
  List<Object> get props => [isFavourite];
}

class RemovedFromFavourite extends LibraryState {}

class FavouriteComicSuccess extends LibraryState {
  final List<FavouriteComic> favouriteComics;

  const FavouriteComicSuccess({required this.favouriteComics});

  @override
  List<Object> get props => [favouriteComics];
}
