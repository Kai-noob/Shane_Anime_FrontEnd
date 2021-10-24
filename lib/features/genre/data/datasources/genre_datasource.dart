import '../../../home/domain/entities/comic.dart';

import '../../domain/entities/comic_gere.dart';
import '../../domain/entities/genre.dart';

abstract class GenreDataSource {
  Future<List<ComicGenre>> getComicId(String genreId);

  Future<List<Genre>> getGenres();

  Future<List<Genre>> getGenre(String comicId);

  Future<List<Comic>> getComics(String genreId);

  Future<List<ComicGenre>> getGenreId(String comicId);
}
