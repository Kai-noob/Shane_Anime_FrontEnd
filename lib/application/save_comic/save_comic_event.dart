part of 'save_comic_bloc.dart';

@freezed
class SaveComicEvent with _$SaveComicEvent {
  const factory SaveComicEvent.saveComic(String comicId) = SaveComic;
  const factory SaveComicEvent.removeComic(String comicId) = RemoveComic;
  const factory SaveComicEvent.watchSaved() = WatchSaved;
  const factory SaveComicEvent.savedComicsReceived(
          Either<ComicFailure, List<SaveComics>> failureOrComics) =
      SavedComicsReceived;
}
