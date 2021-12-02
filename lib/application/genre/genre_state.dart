part of 'genre_bloc.dart';

@freezed
class GenreState with _$GenreState {
  const factory GenreState.initial() = _Initial;
  const factory GenreState.loading() = _Loading;
  const factory GenreState.error(ComicFailure failure) = _Error;
  const factory GenreState.loaded(List<Genre> genres) = _Loaded;
  const factory GenreState.comicsLoaded(List<Comic> comics) = _Comics;
}
