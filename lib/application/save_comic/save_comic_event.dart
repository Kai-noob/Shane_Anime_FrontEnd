part of 'save_comic_bloc.dart';

@freezed
class SaveComicEvent with _$SaveComicEvent {
  const factory SaveComicEvent.saveComic(String comicId) = _SaveComic;
  const factory SaveComicEvent.removeComic(String comicId) = _RemoveComic;
  const factory SaveComicEvent.watchSaved() = _WatchSaved;
  const factory SaveComicEvent.savedComicsReceived(
          Either<ComicFailure, List<SaveComics>> failureOrComics) =
      _SavedComicsReceived;
}
