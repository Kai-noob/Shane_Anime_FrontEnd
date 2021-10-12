import 'package:movie_app/features/genre/domain/entities/comic_by_genre.dart';
import 'package:movie_app/features/genre/domain/entities/comic_gere.dart';
import 'package:movie_app/features/genre/domain/entities/genre.dart';

abstract class GenreDataSource {
  Future<List<ComicGenre>> getComicGenreFromFirebase(String genreId);

  Future<List<Genre>> getGenreFromFirebase();

  Future<ComicByGenre> getComicByGenreFromFirebase(String doc);
}
