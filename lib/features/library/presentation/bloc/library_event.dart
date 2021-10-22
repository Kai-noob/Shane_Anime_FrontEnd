part of 'library_bloc.dart';

abstract class LibraryEvent extends Equatable {
  const LibraryEvent();

  @override
  List<Object> get props => [];
}

class FetchFavouriteComic extends LibraryEvent {}

class ToggleFavouriteComic extends LibraryEvent {
  final FavouriteComic favouriteComic;

  final String comicId;

  ToggleFavouriteComic(this.favouriteComic, this.comicId);
}
