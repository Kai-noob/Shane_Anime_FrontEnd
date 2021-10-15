import 'package:movie_app/features/home/domain/entities/comic.dart';

import '../datasources/genre_datasource.dart';
import '../../domain/entities/comic_by_genre.dart';
import '../../domain/entities/comic_gere.dart';
import '../../domain/entities/genre.dart';
import '../../domain/repositories/genre_repo.dart';

class GenreRepoImpl implements GenreRepo {
  final GenreDataSource genreDataSource;

  GenreRepoImpl({required this.genreDataSource});
  @override
  Future<List<ComicGenre>> getComicId(String genreId) {
    return genreDataSource.getComicId(genreId);
  }

  @override
  Future<List<Genre>> getGenres() {
    return genreDataSource.getGenres();
  }

  @override
  Future<Comic> getComics(String comicId) {
    return genreDataSource.getComics(comicId);
  }

  @override
  Future<List<ComicGenre>> getGenreId(String comicId) {
    return genreDataSource.getGenreId(comicId);
  }

  @override
  Future<Genre> getGenre(String genreId) {
    return genreDataSource.getGenre(genreId);
  }
}
