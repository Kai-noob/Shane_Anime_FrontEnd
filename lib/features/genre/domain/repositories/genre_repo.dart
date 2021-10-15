import 'package:movie_app/features/home/domain/entities/comic.dart';

import '../entities/comic_by_genre.dart';
import '../entities/comic_gere.dart';
import '../entities/genre.dart';

abstract class GenreRepo {
  Future<List<ComicGenre>> getComicId(String genreId);

  Future<List<Genre>> getGenres();

  Future<Genre> getGenre(String genreId);

  Future<Comic> getComics(String comicId);

  Future<List<ComicGenre>> getGenreId(String comicId);
}
