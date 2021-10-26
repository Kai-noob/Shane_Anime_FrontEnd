part of 'library_bloc.dart';

abstract class LibraryEvent extends Equatable {
  const LibraryEvent();

  @override
  List<Object> get props => [];
}

class FetchFavouriteComic extends LibraryEvent {}

class CheckFavouriteComic extends LibraryEvent {
  final String comicId;

  const CheckFavouriteComic(this.comicId);

  @override
  List<Object> get props => [comicId];
}

class SaveFavComic extends LibraryEvent {
  final FavouriteComic favouriteComic;

  const SaveFavComic({required this.favouriteComic});

  @override
  List<Object> get props => [favouriteComic];
}

class ToggleFavouriteComic extends LibraryEvent {
  final FavouriteComic favouriteComic;

  final String comicId;

  const ToggleFavouriteComic(this.favouriteComic, this.comicId);
}
