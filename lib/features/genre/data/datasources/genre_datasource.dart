import 'package:movie_app/features/home/domain/entities/comic.dart';

import '../../domain/entities/comic_by_genre.dart';
import '../../domain/entities/comic_gere.dart';
import '../../domain/entities/genre.dart';

abstract class GenreDataSource {
  Future<List<ComicGenre>> getComicId(String genreId);

  Future<List<Genre>> getGenres();

  Future<Genre> getGenre(String genreId);

  Future<Comic> getComics(String comicId);

  Future<List<ComicGenre>> getGenreId(String comicId);
}
