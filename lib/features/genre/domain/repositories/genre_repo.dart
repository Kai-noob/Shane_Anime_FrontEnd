import 'package:movie_app/features/genre/domain/entities/comic_by_genre.dart';
import 'package:movie_app/features/genre/domain/entities/comic_gere.dart';
import 'package:movie_app/features/genre/domain/entities/genre.dart';

abstract class GenreRepo {
  Future<List<ComicGenre>> getComicGenre(String genreId);

  Future<List<Genre>> getGenre();

  Future<ComicByGenre> getComicByGenre(String doc);
}
