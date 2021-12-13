part of 'genre_bloc.dart';

@freezed
class GenreEvent with _$GenreEvent {
  const factory GenreEvent.getGenres() = _GetGenres;
  const factory GenreEvent.getComicsByGenres(String genreId) =
      _GetComicsByGenres;
  const factory GenreEvent.getComicGenres(String comicId) = _GetComicGenres;
}
