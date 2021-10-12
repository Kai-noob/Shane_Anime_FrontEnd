import 'package:movie_app/features/genre/data/datasources/genre_datasource.dart';
import 'package:movie_app/features/genre/domain/entities/comic_by_genre.dart';
import 'package:movie_app/features/genre/domain/entities/comic_gere.dart';
import 'package:movie_app/features/genre/domain/entities/genre.dart';
import 'package:movie_app/features/genre/domain/repositories/genre_repo.dart';

class GenreRepoImpl implements GenreRepo {
  final GenreDataSource genreDataSource;

  GenreRepoImpl({required this.genreDataSource});
  @override
  Future<List<ComicGenre>> getComicGenre(String genreId) {
    return genreDataSource.getComicGenreFromFirebase(genreId);
  }

  @override
  Future<List<Genre>> getGenre() {
    return genreDataSource.getGenreFromFirebase();
  }

  @override
  Future<ComicByGenre> getComicByGenre(String doc) {
    return genreDataSource.getComicByGenreFromFirebase(doc);
  }
}
