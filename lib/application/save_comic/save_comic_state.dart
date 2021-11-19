part of 'save_comic_bloc.dart';

@freezed
class SaveComicState with _$SaveComicState {
  const factory SaveComicState.initial() = _Initial;
  const factory SaveComicState.loading() = _Loading;
  const factory SaveComicState.error(ComicFailure comicFailure) = _Error;
  const factory SaveComicState.createSuccess() = _CreateSuccess;
  const factory SaveComicState.deleteSuccess() = _DeleteSuccess;
  const factory SaveComicState.watchSuccess(List<SaveComics> saveComics) =
      _WatchSuccess;
}
