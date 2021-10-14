import '../../domain/entities/comic_by_genre.dart';
import '../../domain/entities/comic_gere.dart';
import '../../domain/entities/genre.dart';

abstract class GenreDataSource {
  Future<List<ComicGenre>> getComicGenreFromFirebase(String genreId);

  Future<List<Genre>> getGenreFromFirebase();

  Future<ComicByGenre> getComicByGenreFromFirebase(String doc);
}
