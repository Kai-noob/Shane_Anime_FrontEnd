part of 'library_bloc.dart';

abstract class LibraryEvent extends Equatable {
  const LibraryEvent();

  @override
  List<Object> get props => [];
}

class FetchFavouriteComic extends LibraryEvent {}

class CheckFavouriteComic extends LibraryEvent {
  final String comicId;

  CheckFavouriteComic(this.comicId);

  @override
  // TODO: implement props
  List<Object> get props => [comicId];
}

class SaveFavComic extends LibraryEvent {
  final FavouriteComic favouriteComic;

  SaveFavComic({required this.favouriteComic});

  @override
  // TODO: implement props
  List<Object> get props => [favouriteComic];
}

class ToggleFavouriteComic extends LibraryEvent {
  final FavouriteComic favouriteComic;

  final String comicId;

  ToggleFavouriteComic(this.favouriteComic, this.comicId);
}
