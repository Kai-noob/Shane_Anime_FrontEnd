import '../entities/comic_by_genre.dart';
import '../entities/comic_gere.dart';
import '../entities/genre.dart';

abstract class GenreRepo {
  Future<List<ComicGenre>> getComicGenre(String genreId);

  Future<List<Genre>> getGenre();

  Future<ComicByGenre> getComicByGenre(String comicId);
}
