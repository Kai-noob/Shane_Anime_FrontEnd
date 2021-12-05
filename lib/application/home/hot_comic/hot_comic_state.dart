part of 'hot_comic_bloc.dart';

@freezed
class HotComicState with _$HotComicState {
  const factory HotComicState.loading() = _Loading;
  const factory HotComicState.loaded(List<Comic> comics) = _Loaded;
  const factory HotComicState.error(ComicFailure failure) = _Error;
}
