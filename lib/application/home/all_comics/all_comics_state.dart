part of 'all_comics_bloc.dart';

@freezed
class AllComicsState with _$AllComicsState {
  const factory AllComicsState.loading() = _Loading;
  const factory AllComicsState.loaded(List<Comic> comics) = _Loaded;
  const factory AllComicsState.error() = _Error;
}
