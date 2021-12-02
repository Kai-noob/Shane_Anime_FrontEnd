part of 'complete_comic_bloc.dart';

@freezed
class CompleteComicState with _$CompleteComicState {
  const factory CompleteComicState.loading() = _Loading;
  const factory CompleteComicState.loaded(List<Comic> comics) = _Loaded;
  const factory CompleteComicState.error(ComicFailure failure) = _Error;
}
